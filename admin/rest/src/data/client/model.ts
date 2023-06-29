import { crudFactory } from '@/data/client/curd-factory';
import { CreateModelInput, QueryOptions, Model, ModelQueryOptions } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const modelClient = {
  ...crudFactory<Model, QueryOptions, CreateModelInput>(API_ENDPOINTS.MODELS),
  all: ({ name, ...params }: Partial<ModelQueryOptions>) => {
    return HttpClient.get<Model[]>(API_ENDPOINTS.MODELS, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
