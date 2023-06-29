import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, CreditQueryOptions, CreditPaginator } from '@/types';
import { creditClient } from '@/data/client/credit';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';

export const useCreditsQuery = (options?: Partial<CreditQueryOptions>) => {
  const { data, isLoading, error } = useQuery<CreditPaginator, Error>(
    [API_ENDPOINTS.CREDITS, options],
    ({ queryKey, pageParam }) =>
    creditClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    credits: data?.data ?? [],
    loading: isLoading,
    error,
  };
};
