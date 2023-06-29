import {
  Product,
  CreateProduct,
  ProductPaginator,
  QueryOptions,
  GetParams,
  ProductQueryOptions,
} from '@/types';
import { API_ENDPOINTS } from './api-endpoints';
import { crudFactory } from './curd-factory';
import { HttpClient } from './http-client';

export const productClient = {
  ...crudFactory<Product, QueryOptions, CreateProduct>(API_ENDPOINTS.PRODUCTS),
  get({ slug, language }: GetParams) {
    return HttpClient.get<Product>(`${API_ENDPOINTS.PRODUCTS}/${slug}`, {
      language,
      with: 'year;province;credit;gear;color;model;type;shop;categories;tags;variations.attribute.values;variation_options;author;manufacturer;digital_file',
    });
  },
  paginated: ({
    type,
    name,
    categories,
    shop_id,
    ...params
  }: Partial<ProductQueryOptions>) => {
    return HttpClient.get<ProductPaginator>(API_ENDPOINTS.PRODUCTS, {
      searchJoin: 'and',
      with: 'shop;type',
      ...params,
      search: HttpClient.formatSearchParams({
        type,
        name,
        categories,
        shop_id,
      }),
    });
  },
  popular({ shop_id, ...params }: Partial<ProductQueryOptions>) {
    return HttpClient.get<Product[]>(API_ENDPOINTS.POPULAR_PRODUCTS, {
      searchJoin: 'and',
      with: 'type;model;categories;shop',
      ...params,
      search: HttpClient.formatSearchParams({ shop_id }),
    });
  },
};
