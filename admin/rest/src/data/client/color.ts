import { crudFactory } from '@/data/client/curd-factory';
import { Color, ColorQueryOptions, ColorInput } from '@/types';
import { API_ENDPOINTS } from '@/data/client/api-endpoints';
import { HttpClient } from '@/data/client/http-client';

export const colorClient = {
  ...crudFactory<Color,ColorQueryOptions,ColorInput>(API_ENDPOINTS.COLORS),
  all: ({ name, ...params }: Partial<ColorQueryOptions>) => {
    return HttpClient.get<Color[]>(API_ENDPOINTS.COLORS, {
      searchJoin: 'and',
      ...params,
      search: HttpClient.formatSearchParams({ name }),
    });
  },
};
