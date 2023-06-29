import { PaymentGateway } from '@type/index';

/**
 *
 *  Utility method to find out is stripe is available as a active payment gateway
 *
 */
export function isStripeAvailable(props: any) {
  const { paymentGateway } = props;

  let isStripeAvailable = false;
  if (
    [PaymentGateway.STRIPE]?.includes(
      paymentGateway?.toUpperCase() as PaymentGateway
    )
  ) {
    isStripeAvailable = true;
  }

  return isStripeAvailable;
}
