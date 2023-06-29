import CashOnDelivery from '@components/checkout/payment/cash-on-delivery';
import PaymentOnline from '@components/checkout/payment/payment-online';
import StripePayment from '@components/checkout/payment/stripe';
import Alert from '@components/ui/alert';
import { useSettings } from '@framework/settings';
import { RadioGroup } from '@headlessui/react';
import { PaymentMethodName, paymentGatewayAtom } from '@store/checkout';
import { PaymentGateway } from '@type/index';
import cn from 'classnames';
import { useAtom } from 'jotai';
import { useTranslation } from 'next-i18next';
import Image from 'next/image';
import { useEffect, useState } from 'react';

interface PaymentGroupOptionProps {
  payment: PaymentMethodInformation;
}

const PaymentGroupOption: React.FC<PaymentGroupOptionProps> = ({
  payment: { name, value, icon },
}) => {
  const { t } = useTranslation('common');
  return (
    <RadioGroup.Option value={value} key={value}>
      {({ checked }) => (
        <div
          className={cn(
            'relative flex h-full w-full cursor-pointer items-center justify-center rounded-[8px] border border-[#F3F3F3] p-4 text-center shadow-600',
            checked && '!border-[#212121]'
          )}
        >
          {icon ? (
            <>
              <Image
                src={icon}
                alt={name}
                className="h-[30px]"
                width={63}
                height={30}
              />
            </>
          ) : (
            <span className="text-sm font-normal text-body">{t(name)}</span>
          )}
        </div>
      )}
    </RadioGroup.Option>
  );
};

interface PaymentMethodInformation {
  name: string;
  value: PaymentMethodName;
  icon: string;
  component: React.FunctionComponent;
}
// Payment Methods Mapping Object
const AVAILABLE_PAYMENT_METHODS_MAP: Record<
  PaymentMethodName,
  PaymentMethodInformation
> = {
  STRIPE: {
    name: 'Stripe',
    value: PaymentGateway.STRIPE,
    icon: '/payment/stripe.png',
    component: PaymentOnline,
  },
  PAYPAL: {
    name: 'Paypal',
    value: PaymentGateway.PAYPAL,
    icon: '/payment/paypal.png',
    component: PaymentOnline,
  },
  CASH_ON_DELIVERY: {
    name: 'text-cash-on-delivery',
    value: PaymentGateway.COD,
    icon: '',
    component: CashOnDelivery,
  },
  RAZORPAY: {
    name: 'Razorpay',
    value: PaymentGateway.RAZORPAY,
    icon: '/payment/razorpay.png',
    component: PaymentOnline,
  },
  MOLLIE: {
    name: 'Mollie',
    value: PaymentGateway.MOLLIE,
    icon: '/payment/mollie.png',
    component: PaymentOnline,
  },
  PAYSTACK: {
    name: 'Paystack',
    value: PaymentGateway.PAYSTACK,
    icon: '/payment/paystack.png',
    component: PaymentOnline,
  },
};

const PaymentGrid: React.FC<{ className?: string }> = ({ className }) => {
  const { data, isLoading } = useSettings();
  const {
    // @ts-ignore
    options: { paymentGateway, useCashOnDelivery },
  } = data;
  const [gateway, setGateway] = useAtom<PaymentMethodName>(paymentGatewayAtom);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const { t } = useTranslation('common');
  // If no payment gateway is set and cash on delivery also disable then cash on delivery will be on by default
  const isEnableCashOnDelivery =
    (!useCashOnDelivery && !paymentGateway) || useCashOnDelivery;

  useEffect(() => {
    if (paymentGateway) {
      // @ts-ignore
      setGateway(paymentGateway?.toUpperCase() as PaymentGateway);
    } else {
      // @ts-ignore
      setGateway(PaymentGateway.COD);
    }
  }, [isLoading, useCashOnDelivery, paymentGateway]);

  const PaymentMethod = AVAILABLE_PAYMENT_METHODS_MAP[gateway];
  const Component = PaymentMethod?.component ?? StripePayment;
  return (
    <div className={className}>
      {errorMessage ? (
        <Alert
          message={t(`common:${errorMessage}`)}
          variant="error"
          closeable={true}
          className="mt-5"
          onClose={() => setErrorMessage(null)}
        />
      ) : null}

      <RadioGroup value={gateway} onChange={setGateway}>
        <RadioGroup.Label className="block mb-5 text-base font-semibold text-heading">
          {t('text-choose-payment')}
        </RadioGroup.Label>

        <div className="grid grid-cols-2 gap-4 mb-6 md:grid-cols-3">
          {paymentGateway && (
            <PaymentGroupOption
              payment={
                AVAILABLE_PAYMENT_METHODS_MAP[
                  paymentGateway?.toUpperCase() as PaymentGateway
                ]
              }
            />
          )}

          {isEnableCashOnDelivery && (
            <PaymentGroupOption
              payment={AVAILABLE_PAYMENT_METHODS_MAP[PaymentGateway.COD]}
            />
          )}
        </div>
      </RadioGroup>
      <div>
        <Component />
      </div>
    </div>
  );
};

export default PaymentGrid;
