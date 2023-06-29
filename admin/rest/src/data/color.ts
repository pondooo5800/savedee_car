import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, ColorQueryOptions, ColorPaginator } from '@/types';
import { colorClient } from '@/data/client/color';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';

export const useColorsQuery = (options?: Partial<ColorQueryOptions>) => {
  const { data, isLoading, error } = useQuery<ColorPaginator, Error>(
    [API_ENDPOINTS.COLORS, options],
    ({ queryKey, pageParam }) =>
    colorClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    colors: data?.data ?? [],
    loading: isLoading,
    error,
  };
};
