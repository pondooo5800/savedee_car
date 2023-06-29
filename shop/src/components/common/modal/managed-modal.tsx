import { useUI } from "@contexts/ui.context";
import Modal from "./modal";
import dynamic from "next/dynamic";
import Newsletter from '@components/common/newsletter';

const LoginForm = dynamic(() => import("@components/auth/login-form"));
const OtpLogin = dynamic(() => import("@components/auth/otp/otp-login"));
const SignUpForm = dynamic(() => import("@components/auth/sign-up-form"));
const ForgetPasswordForm = dynamic(
  () => import("@components/auth/forget-password/forget-password")
);
const ProductPopup = dynamic(() => import("@components/product/product-popup"));
const AddressForm = dynamic(() => import("@components/address/address-form"));
const AddressDeleteView = dynamic(
  () => import("@components/address/address-delete-view")
);
const AddOrUpdateCheckoutContact = dynamic(
  () => import("@components/checkout/contact/add-or-update")
);
const ProfileAddOrUpdateContact = dynamic(
  () => import("@components/profile/profile-add-or-update-contact")
);
const AddNewCardModal = dynamic(
  () => import('@components/card/add-new-card-modal'),
  { ssr: false }
);
const PaymentModal = dynamic(
  () => import('@components/payment/payment-modal'),
  { ssr: false }
);
const AddNewPaymentModal = dynamic(
  () => import('@components/payment/add-new-payment-modal'),
  { ssr: false }
);
const DeleteCardModal = dynamic(() => import('@components/card/delete-view'));
const ManagedModal: React.FC = () => {
  const { displayModal, closeModal, modalView, modalData } = useUI();
  const modalVariant =
    modalView === 'ADD_OR_UPDATE_CHECKOUT_CONTACT' ||
    modalView === 'ADD_OR_UPDATE_PROFILE_CONTACT' ||
    modalView === 'OTP_LOGIN_VIEW'
      ? 'default'
      : 'center';
  // Controlled payment modal [custom & default]
  if (modalView === 'PAYMENT_MODAL') {
    return <PaymentModal />;
  }
  return (
    <Modal open={displayModal} onClose={closeModal} variant={modalVariant}>
      {modalView === 'LOGIN_VIEW' && <LoginForm />}
      {modalView === 'OTP_LOGIN_VIEW' && <OtpLogin />}
      {modalView === 'SIGN_UP_VIEW' && <SignUpForm />}
      {modalView === 'FORGET_PASSWORD' && <ForgetPasswordForm />}
      {modalView === 'PRODUCT_VIEW' && <ProductPopup productSlug={modalData} />}
      {modalView === 'NEWSLETTER_VIEW' && <Newsletter />}
      {modalView === 'ADDRESS_FORM_VIEW' && <AddressForm data={modalData} />}
      {modalView === 'ADDRESS_DELETE_VIEW' && (
        <AddressDeleteView data={modalData} />
      )}
      {modalView === 'ADD_OR_UPDATE_CHECKOUT_CONTACT' && (
        <AddOrUpdateCheckoutContact data={modalData} />
      )}
      {modalView === 'ADD_OR_UPDATE_PROFILE_CONTACT' && (
        <ProfileAddOrUpdateContact data={modalData} />
      )}
      {modalView === 'ADD_NEW_CARD' && <AddNewCardModal data={modalData} />}
      {modalView === 'USE_NEW_PAYMENT' && <AddNewPaymentModal />}
      {modalView === 'DELETE_CARD_MODAL' && <DeleteCardModal />}
    </Modal>
  );
};

export default ManagedModal;
