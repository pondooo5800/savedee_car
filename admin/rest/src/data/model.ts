import Router from 'next/router';
import { useMutation, useQuery, useQueryClient } from 'react-query';
import { toast } from 'react-toastify';
import { useTranslation } from 'next-i18next';
import { Routes } from '@/config/routes';
import { API_ENDPOINTS } from './client/api-endpoints';
import { GetParams, Type, ModelQueryOptions, ModelPaginator } from '@/types';
import { modelClient } from '@/data/client/model';
import { Config } from '@/config';
import { mapPaginatorData } from '@/utils/data-mappers';

export const useModelsQuery = (options?: Partial<ModelQueryOptions>) => {
  const { data, isLoading, error } = useQuery<ModelPaginator, Error>(
    [API_ENDPOINTS.MODELS, options],
    ({ queryKey, pageParam }) =>
      modelClient.paginated(Object.assign({}, queryKey[1], pageParam)),
    {
      keepPreviousData: true,
    }
  );

  return {
    models: data?.data ?? [],
    paginatorInfo: mapPaginatorData(data),
    loading: isLoading,
    error,
  };
};
