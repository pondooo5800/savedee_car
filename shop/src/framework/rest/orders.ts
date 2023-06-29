import {
  Order,
  OrdersQueryOptionsType,
  CreateOrderPaymentInput,
  PaymentGateway,
  OrderCreateInputType,
} from '@type/index';
import { mapPaginatorData } from '@framework/utils/data-mappers';
import { API_ENDPOINTS } from '@framework/utils/endpoints';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import client from '@framework/utils/index';
import { useRouter } from 'next/router';
import { useUI } from '@contexts/ui.context';
import { ROUTES } from '@lib/routes';

export const useOrders = (options: OrdersQueryOptionsType) => {
  const { data, isLoading, error } = useQuery<Order, Error>(
    [API_ENDPOINTS.ORDER, options],
    ({ queryKey, pageParam }) =>
      client.orders.find(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    orders: {
      data,
      paginatorInfo: mapPaginatorData({ ...data }),
    },
    isLoading,
    error,
  };
};

export const useOrder = ({ tracking_number }: { tracking_number: string }) => {
  const { data, isLoading, error, isFetching, refetch } = useQuery<Order, Error>(
    [API_ENDPOINTS.ORDER, tracking_number],
    () => client.orders.findOne(tracking_number)
  );

  return {
    data: data ?? [],
    paginatorInfo: mapPaginatorData({ ...data }),
    isLoading,
    isFetching,
    refetch,
    error,
  };
};

// export const useOrderStatusesQuery = () => {
//   const { data, isLoading, error } = useQuery<any[], Error>(
//     [API_ENDPOINTS.ORDER_STATUS],
//     () => client.orders.fetchUrl(),
//     {
//       keepPreviousData: true,
//     }
//   );

//   return {
//     data: data ?? [],
//     paginatorInfo: mapPaginatorData({ ...data }),
//     isLoading,
//     error,
//   };
// };

// export const useCreateOrder = () => {
//   const { t } = useTranslation();

//   return useMutation(client.orders.create, {
//     onSuccess: () => {
//       toast.success(t('Order Created Success'));
//     },
//     onError: (error) => {
//       const {
//         response: { data },
//       }: any = error ?? {};

//       toast.error(t(data?.message));
//     },
//   });
// }

export function useCreateOrder() {
  const router = useRouter();
  const { locale } = router;
  const { t } = useTranslation();
  const { mutate: createOrder, isLoading } = useMutation(client.orders.create, {
    onSuccess: ({ tracking_number, payment_gateway, payment_intent }) => {
      if (tracking_number) {
        if ([PaymentGateway.COD].includes(payment_gateway as PaymentGateway)) {
          return router.push(
            `${ROUTES.ORDERS}/${encodeURIComponent(tracking_number)}`
          );
        }

        if (payment_intent?.payment_intent_info?.is_redirect) {
          return router.push(
            payment_intent?.payment_intent_info?.redirect_url as string
          );
        } else {
          return router.push(
            `${ROUTES.ORDERS}/${encodeURIComponent(tracking_number)}/payment`
          );
        }
      }
    },
    onError: (error) => {
      const {
        response: { data },
      }: any = error ?? {};
      toast.error(data?.message);
    },
  });

  function formatOrderInput(input: OrderCreateInputType) {
    const formattedInputs = {
      ...input,
      language: locale,
      invoice_translated_text: {
        subtotal: t('order-sub-total'),
        discount: t('order-discount'),
        tax: t('order-tax'),
        delivery_fee: t('order-delivery-fee'),
        total: t('order-total'),
        products: t('text-products'),
        quantity: t('text-quantity'),
        invoice_no: t('text-invoice-no'),
        date: t('text-date'),
      },
    };
    createOrder(formattedInputs);
  }

  return {
    createOrder: formatOrderInput,
    isLoading,
    // isPaymentIntentLoading
  };
}

export function useOrderPayment() {
  const queryClient = useQueryClient();

  const { mutate: createOrderPayment, isLoading } = useMutation(
    client.orders.payment,
    {
      onSettled: (data) => {
        queryClient.refetchQueries(API_ENDPOINTS.ORDERS);
      },
      onError: (error) => {
        const {
          response: { data },
        }: any = error ?? {};
        toast.error(data?.message);
      },
    }
  );

  function formatOrderInput(input: CreateOrderPaymentInput) {
    const formattedInputs = {
      ...input,
    };
    createOrderPayment(formattedInputs);
  }

  return {
    createOrderPayment: formatOrderInput,
    isLoading,
  };
}

export function useSavePaymentMethod() {
  const {
    mutate: savePaymentMethod,
    isLoading,
    error,
    data,
  } = useMutation(client.orders.savePaymentMethod);

  return {
    savePaymentMethod,
    data,
    isLoading,
    error,
  };
}

export function useGetPaymentIntent({
  tracking_number,
}: {
  tracking_number: string;
}) {
  const router = useRouter();
  const { setModalView, setModalData, openModal } = useUI();

  const { data, isLoading, error, refetch } = useQuery(
    [API_ENDPOINTS.PAYMENT_INTENT, { tracking_number }],
    () => client.orders.getPaymentIntent({ tracking_number }),
    // Make it dynamic for both gql and rest
    {
      enabled: false,
      onSuccess: (data) => {
        if (data?.payment_intent_info?.is_redirect) {
          return router.push(data?.payment_intent_info?.redirect_url as string);
        } else {
          setModalData({
            paymentGateway: data?.payment_gateway,
            paymentIntentInfo: data?.payment_intent_info,
            trackingNumber: data?.tracking_number,
          });
          setModalView("PAYMENT_MODAL");
          return openModal();
        }
      },
    }
  );

  return {
    data,
    getPaymentIntentQuery: refetch,
    isLoading,
    error,
  };
}