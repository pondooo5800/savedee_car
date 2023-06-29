import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, YearQueryOptions, YearPaginator } from '@/types';
import { yearClient } from '@/data/client/year';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';

export const useYearQuery = (options?: Partial<YearQueryOptions>) => {
  const { data, isLoading, error } = useQuery<YearPaginator, Error>(
    [API_ENDPOINTS.YEARS, options],
    ({ queryKey, pageParam }) =>
    yearClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    year: data?.data ?? [],
    loading: isLoading,
    error,
  };
};
