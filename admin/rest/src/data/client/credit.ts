import { crudFactory } from '@/data/client/curd-factory';
import { Credit, CreditQueryOptions, CreditInput } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const creditClient = {
  ...crudFactory<Credit,CreditQueryOptions,CreditInput>(API_ENDPOINTS.CREDITS),
  all: ({ name, ...params }: Partial<CreditQueryOptions>) => {
    return HttpClient.get<Credit[]>(API_ENDPOINTS.CREDITS, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
