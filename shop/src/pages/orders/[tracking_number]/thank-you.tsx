import DefaultSeo from '@components/common/default-seo';
import { getLayout } from '@components/layout/layout';
import NewOrder from '@components/orders/new-order';
import Spinner from '@components/ui/loaders/spinner/spinner';
import { useOrder, useOrderPayment } from '@framework/orders';
import { useTranslation } from 'next-i18next';
import { useRouter } from 'next/router';
import { useEffect } from 'react';
import { toast } from 'react-toastify';

export { getServerSideProps } from '@framework/order.ssr';

export default function OrderPage() {
  const { query } = useRouter();
  const { t } = useTranslation();
  const { data, isLoading, isFetching } = useOrder({
    tracking_number: query.tracking_number as string,
  });
  const { createOrderPayment } = useOrderPayment();

  useEffect(() => {
    // @ts-ignore
    switch (data?.payment_status) {
      case 'payment-pending':
        toast.success(`${t('payment-pending')}`);
        break;

      case 'payment-awaiting-for-approval':
        toast.success(`${t('payment-awaiting-for-approval')}`);
        break;

      case 'payment-processing':
        toast.success(`${t('payment-processing')}`);
        break;

      case 'payment-success':
        toast.success(`${t('payment-success')}`);
        break;

      case 'payment-reversal':
        toast.error(`${t('payment-reversal')}`);
        break;

      case 'payment-failed':
        toast.error(`${t('payment-failed')}`);
        break;
    }
  }, [
    // @ts-ignore
    data?.payment_status,
  ]);

  useEffect(() => {
    createOrderPayment({
      tracking_number: query?.tracking_number as string,
    });
  }, []);

  if (isLoading) {
    return <Spinner showText={false} />;
  }

  return (
    <>
      <DefaultSeo noindex={true} nofollow={true} />
      <NewOrder />
    </>
  );
}
OrderPage.authenticate = true;
OrderPage.getLayout = getLayout;
