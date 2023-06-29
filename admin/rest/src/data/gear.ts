import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, GearQueryOptions, GearPaginator } from '@/types';
import { gearClient } from '@/data/client/gear';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';

export const useGearsQuery = (options?: Partial<GearQueryOptions>) => {
  const { data, isLoading, error } = useQuery<GearPaginator, Error>(
    [API_ENDPOINTS.GEARS, options],
    ({ queryKey, pageParam }) =>
    gearClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    gears: data?.data ?? [],
    loading: isLoading,
    error,
  };
};
