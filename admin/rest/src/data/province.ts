import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, ProvinceQueryOptions, ProvincePaginator } from '@/types';
import { provinceClient } from '@/data/client/province';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';


export const useProvincesQuery = (options?: Partial<ProvinceQueryOptions>) => {
  const { data, isLoading, error } = useQuery<ProvincePaginator, Error>(
    [API_ENDPOINTS.PROVEINCES, options],
    ({ queryKey, pageParam }) =>
      provinceClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    provinces: data?.data ?? [],
    loading: isLoading,
    error,
  };
};
