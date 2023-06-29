import Button from '@components/ui/button';
import { useTranslation } from 'next-i18next';
import { useGetPaymentIntent } from '@framework/orders';

interface Props {
  trackingNumber: string;
  buttonSize?: 'big' | 'medium' | 'small';
}

const PayNowButton: React.FC<Props> = ({ trackingNumber, buttonSize = 'small' }) => {
  const { t } = useTranslation();
  const { isLoading, getPaymentIntentQuery } = useGetPaymentIntent({
    tracking_number: trackingNumber,
  });

  async function handlePayNow() {
    await getPaymentIntentQuery();
  }

  return (
    <Button
      className="w-full"
      onClick={handlePayNow}
      variant="slim"
      disabled={isLoading}
      loading={isLoading}
    >
      {t('text-pay')}
    </Button>
  );
};

export default PayNowButton;
