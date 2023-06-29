import { API_ENDPOINTS } from '@framework/utils/endpoints';
import { HttpClient } from '@framework/utils/request'
import { ParamsType, Attribute, GetParams, Type, TypePaginator, NumberOrString, LoginInputType, SocialLoginInputType, SendOtpCodeInputType, VerifyOtpInputType, OtpLoginInputType, UpdateContactInput, RegisterUserInputType, ChangePasswordInputType, ForgetPasswordInputType, ResetPasswordInputType, VerifyPasswordInputType, Category, CategoryPaginator, VerifyCheckoutInputType, ContactFormValues, CouponPaginator, VerifyCouponInputType, CustomerType, OrderCreateInputType, QueryParamsType, Order, Product, ProductPaginator, SettingsResponse, SettingsQueryOptions, Shop, ShopPaginator, Tag, TagPaginator, User, AttributeQueryOptions, Card, CreateOrderPaymentInput, PaymentIntentCollection } from '@type/index';

class Client {
  attributes = {
    all: (params?: AttributeQueryOptions) =>
      HttpClient.get<Attribute[]>(API_ENDPOINTS.ATTRIBUTES, { ...params }),
  };

  brands = {
    find: (params: ParamsType) => {
      const {
        type,
        text: name,
        category,
        tags,
        variations,
        status,
        is_active,
        shop_id,
        limit = 30,
        sortedBy = 'DESC',
        orderBy = 'created_at',
        min_price,
        max_price,
      } = params;
      return HttpClient.get<Type[]>(API_ENDPOINTS.TYPE, {
        searchJoin: 'and',
        limit,
        sortedBy,
        orderBy,
        ...params,
        search: HttpClient.stringifySearchQuery({
          type,
          name,
          category,
          tags,
          variations,
          status,
          shop_id,
          is_active,
          min_price,
          max_price,
        }),
      });
    },
    findOne: ({ slug, language }: GetParams) =>
      HttpClient.get<Type[]>(`${API_ENDPOINTS.TYPE}/${slug}`, {
        language,
      }),

    all: (params: ParamsType) =>
      HttpClient.get<TypePaginator>(API_ENDPOINTS.TYPE, {
        ...params,
      }),
  };

  address = {
    deleteAddress: ({ id }: { id: string }) =>
      HttpClient.delete(`${API_ENDPOINTS.ADDRESS}/${id}`),
  };

  auth = {
    login: (input: LoginInputType) =>
      HttpClient.post(API_ENDPOINTS.LOGIN, input),

    socialLogin: (input: SocialLoginInputType) =>
      HttpClient.post(API_ENDPOINTS.SOCIAL_LOGIN, input),

    sendOtpCode: (input: SendOtpCodeInputType) =>
      HttpClient.post(API_ENDPOINTS.SEND_OTP_CODE, input),

    verifyOtpCode: (input: VerifyOtpInputType) =>
      HttpClient.post(API_ENDPOINTS.VERIFY_OTP_CODE, input),

    otpLogin: (input: OtpLoginInputType) =>
      HttpClient.post(API_ENDPOINTS.OTP_LOGIN, input),

    updateContact: (input: UpdateContactInput) =>
      HttpClient.post(API_ENDPOINTS.UPDATE_CONTACT, input),

    register: (input: RegisterUserInputType) =>
      HttpClient.post(API_ENDPOINTS.REGISTER, input),

    logout: () => HttpClient.post<boolean>(API_ENDPOINTS.LOGOUT, {}),

    changePassword: (input: ChangePasswordInputType) =>
      HttpClient.post(API_ENDPOINTS.CHANGE_PASSWORD, input),

    forgetPassword: (input: ForgetPasswordInputType) =>
      HttpClient.post(API_ENDPOINTS.FORGET_PASSWORD, input),

    resetPassword: (input: ResetPasswordInputType) =>
      HttpClient.post(API_ENDPOINTS.RESET_PASSWORD, input),

    verifyForgetPassword: (input: VerifyPasswordInputType) =>
      HttpClient.post(API_ENDPOINTS.VERIFY_FORGET_PASSWORD, input),
  };

  user = {
    me: () => HttpClient.get<User>(API_ENDPOINTS.CUSTOMER),
  };

  category = {
    findOne: ({ slug, language }: GetParams) =>
      HttpClient.get<Category[]>(`${API_ENDPOINTS.CATEGORIES}/${slug}`, {
        language,
      }),

    find: (params: ParamsType) => {
      const {
        type,
        text: name,
        category,
        tags,
        variations,
        status,
        is_active,
        shop_id,
        limit = 30,
        sortedBy = 'DESC',
        orderBy = 'created_at',
        min_price,
        max_price,
        parent,
      } = params;
      const searchString = HttpClient.stringifySearchQuery({
        type,
        name,
        category,
        tags,
        variations,
        status,
        shop_id,
        is_active,
        min_price,
        max_price,
        parent,
      });
      // const queryString = `?search=${searchString}&searchJoin=and&limit=${limit}&sortedBy=${sortedBy}&orderBy=${orderBy}&with=products`;
      return HttpClient.get<Category[]>(API_ENDPOINTS.CATEGORIES, {
        search: searchString,
        ...params,
        searchJoin: 'and',
        limit,
        sortedBy,
        orderBy,
        with: 'products',
      });
    },

    all: (params: ParamsType) =>
      HttpClient.get<CategoryPaginator>(API_ENDPOINTS.CATEGORIES, {
        ...params,
      }),
  };

  orders = {
    verifyCheckout: (input: VerifyCheckoutInputType) => {
      return HttpClient.post(API_ENDPOINTS.VERIFY_CHECKOUT, input);
    },
    create: (input: OrderCreateInputType) =>
      HttpClient.post<Order>(API_ENDPOINTS.ORDER, input),
    // fetchUrl : () => {
    //   return HttpClient.get<any>(API_ENDPOINTS.ORDER_STATUS);
    // },
    findOne: (id: NumberOrString) =>
      HttpClient.get<Order>(`${API_ENDPOINTS.ORDER}/${id}`),
    find: (queryKey: QueryParamsType) => {
      return HttpClient.get<Order>(`${API_ENDPOINTS.ORDER}`, {
        ...queryKey,
        orderBy: 'updated_at',
        sortedBy: 'DESC',
        searchJoin: 'and',
      });
    },
    payment: (input: CreateOrderPaymentInput) =>
      HttpClient.post<any>(API_ENDPOINTS.ORDERS_PAYMENT, input),
    savePaymentMethod: (input: any) =>
      HttpClient.post<any>(API_ENDPOINTS.SAVE_PAYMENT_METHOD, input),
    getPaymentIntent: ({ tracking_number }: { tracking_number: string }) =>
      HttpClient.get<PaymentIntentCollection>(API_ENDPOINTS.PAYMENT_INTENT, {
        tracking_number,
      }),
  };

  contact = {
    create: (input: ContactFormValues) => {
      return HttpClient.post(API_ENDPOINTS.CONTACT, input).then(
        (res: any) => res.data
      );
    },

    updateCustomer: (input: CustomerType) => {
      return HttpClient.put(
        API_ENDPOINTS.CUSTOMERS + '/' + input.id,
        input
      ).then((res: any) => res.data);
    },
  };

  coupon = {
    all: (params: ParamsType) =>
      HttpClient.get<CouponPaginator>(API_ENDPOINTS.COUPONS, {
        ...params,
      }),

    verifyCoupon: (input: VerifyCouponInputType) => {
      return HttpClient.post(API_ENDPOINTS.COUPONS + '/verify', input);
    },
  };

  instagram = {
    get: (queryKey: QueryParamsType) => {
      if (!API_ENDPOINTS?.INSTAGRAM_TOKEN) return [];
      return HttpClient.get(API_ENDPOINTS?.INSTAGRAM, { queryKey })
        .then((res: any) => res?.data)
        .then((data) => data?.data);
    },
  };

  product = {
    find: (params: ParamsType) => {
      const {
        type,
        text: name,
        category,
        tags,
        variations,
        status,
        is_active,
        shop_id,
        limit = 30,
        sortedBy = 'DESC',
        orderBy = 'created_at',
        min_price,
        max_price,
      } = params;
      const searchString = HttpClient.stringifySearchQuery({
        type,
        name,
        category,
        tags,
        variations,
        status,
        shop_id,
        is_active,
        min_price,
        max_price,
      });
      return HttpClient.get<ProductPaginator>(API_ENDPOINTS.PRODUCTS, {
        search: searchString,
        ...params,
        searchJoin: 'and',
        limit,
        sortedBy,
        orderBy,
        with: 'type;author',
      });
    },

    findOne: ({ slug, language }: GetParams) =>
      HttpClient.get<Product>(`${API_ENDPOINTS.PRODUCTS}/${slug}`, {
        language,
        searchJoin: 'and',
        with: 'categories;shop;type;variations;variations.attribute.values;manufacturer;variation_options;tags;author',
      }),

    all: (params: ParamsType) =>
      HttpClient.get<Product[]>(API_ENDPOINTS.PRODUCTS, {
        ...params,
      }),
  };

  settings = {
    findAll: (params?: SettingsQueryOptions) =>
      HttpClient.get<SettingsResponse>(API_ENDPOINTS.SETTINGS, { ...params }),
  };

  shop = {
    findOne: ({ slug, language }: GetParams) =>
      HttpClient.get<Shop>(`${API_ENDPOINTS.SHOPS}/${slug}`, language),

    find: (params: ParamsType) => {
      const {
        type,
        text: name,
        category,
        tags,
        variations,
        status,
        is_active,
        shop_id,
        limit = 30,
        sortedBy = 'DESC',
        orderBy = 'created_at',
        min_price,
        max_price,
      } = params;
      const searchString = HttpClient.stringifySearchQuery({
        type,
        name,
        category,
        tags,
        variations,
        status,
        shop_id,
        is_active,
        min_price,
        max_price,
      });
      return HttpClient.get<ShopPaginator>(API_ENDPOINTS.SHOPS, {
        search: searchString,
        ...params,
        searchJoin: 'and',
        limit,
        sortedBy,
        orderBy,
      });
    },

    all: (params: ParamsType) =>
      HttpClient.get<ShopPaginator>(API_ENDPOINTS.SHOPS, {
        ...params,
      }),
  };

  tag = {
    findOne: ({ slug, language }: GetParams) =>
      HttpClient.get<Tag>(`${API_ENDPOINTS.TAGS}/${slug}`, language),

    all: (params: ParamsType) =>
      HttpClient.get<TagPaginator>(API_ENDPOINTS.TAGS, {
        ...params,
      }),
  };

  cards = {
    all: (params?: any) =>
      HttpClient.get<Card[]>(API_ENDPOINTS.CARDS, { ...params }),
    remove: ({ id }: { id: string }) =>
      HttpClient.delete<any>(`${API_ENDPOINTS.CARDS}/${id}`),
    addPaymentMethod: (method_key: any) =>
      HttpClient.post<any>(API_ENDPOINTS.CARDS, method_key),
    makeDefaultPaymentMethod: (input: any) =>
      HttpClient.post<any>(API_ENDPOINTS.SET_DEFAULT_CARD, input),
  };
}

export default new Client();
