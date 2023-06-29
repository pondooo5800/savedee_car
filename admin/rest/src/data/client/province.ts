import { crudFactory } from '@/data/client/curd-factory';
import { CreateProvinceInput, QueryOptions, Province, ProvinceQueryOptions } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const provinceClient = {
  ...crudFactory<Province, QueryOptions, CreateProvinceInput>(API_ENDPOINTS.PROVEINCES),
  all: ({ name, ...params }: Partial<ProvinceQueryOptions>) => {
    return HttpClient.get<Province[]>(API_ENDPOINTS.PROVEINCES, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
