import { crudFactory } from '@/data/client/curd-factory';
import { Gear, GearQueryOptions, GearInput } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const gearClient = {
  ...crudFactory<Gear,GearQueryOptions,GearInput>(API_ENDPOINTS.GEARS),
  all: ({ name, ...params }: Partial<GearQueryOptions>) => {
    return HttpClient.get<Gear[]>(API_ENDPOINTS.GEARS, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
