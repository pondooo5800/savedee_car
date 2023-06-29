import StripeCardForm from '@components/card/stripe/stripe-card-form';
import { useUI } from '@contexts/ui.context';

const CARDS_FORM_COMPONENTS: any = {
  STRIPE: {
    component: StripeCardForm,
  },
};

const AddNewCardModal = ({ data }: any) => {
  // console.log(data);
  const { paymentGateway } = data;

  const PaymentMethod = CARDS_FORM_COMPONENTS[paymentGateway?.toUpperCase()];
  const CardFormComponent = PaymentMethod?.component;

  return <CardFormComponent />;
};

export default AddNewCardModal;
