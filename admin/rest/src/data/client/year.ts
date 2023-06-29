import { crudFactory } from '@/data/client/curd-factory';
import { Year, YearQueryOptions, YearInput } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const yearClient = {
  ...crudFactory<Year,YearQueryOptions,YearInput>(API_ENDPOINTS.YEARS),
  all: ({ name, ...params }: Partial<YearQueryOptions>) => {
    return HttpClient.get<Year[]>(API_ENDPOINTS.YEARS, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
