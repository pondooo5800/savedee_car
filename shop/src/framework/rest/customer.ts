import { useTranslation } from 'next-i18next';
import { useMutation, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import client from '@framework/utils/index'

export const useUpdateCustomer = () => {
  const { t } = useTranslation();
  const queryClient = useQueryClient();
  return useMutation(client.contact.updateCustomer, {
    onError: (error) => {
      const {
        response: { data },
      }: any = error ?? {};

      toast.error(t(data?.message));
    },
    onSettled: () => {
      queryClient.invalidateQueries('me');
    },
  });
};