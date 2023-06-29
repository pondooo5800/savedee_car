import Input from '@/components/ui/input';
import TextArea from '@/components/ui/text-area';
import { useForm, FormProvider } from 'react-hook-form';
import Button from '@/components/ui/button';
import Description from '@/components/ui/description';
import Card from '@/components/common/card';
import Label from '@/components/ui/label';
import Radio from '@/components/ui/radio/radio';
import { useRouter } from 'next/router';
import { yupResolver } from '@hookform/resolvers/yup';
import FileInput from '@/components/ui/file-input';
import { productValidationSchema } from './product-validation-schema';
import ProductVariableForm from './product-variable-form';
import ProductSimpleForm from './product-simple-form';
import ProductGroupInput from './product-group-input';
import ProductCategoryInput from './product-category-input';
import ProductModelInput from './product-model-input';
import ProductColorInput from './product-color-input';
import ProductYearInput from './product-year-input';
import ProductGearInput from './product-gear-input';
import ProductProvinceInput from './product-province-input';
import ProductCreditInput from './product-credit-input';
import ProductTypeInput from './product-type-input';
import { ProductType, Product } from '@/types';
import { useTranslation } from 'next-i18next';
import { useShopQuery } from '@/data/shop';
import ProductTagInput from './product-tag-input';
import { Config } from '@/config';
import Alert from '@/components/ui/alert';
import { useState } from 'react';
import ProductAuthorInput from './product-author-input';
import ProductManufacturerInput from './product-manufacturer-input';
import { EditIcon } from '@/components/icons/edit';
import {
  getProductDefaultValues,
  getProductInputValues,
  ProductFormValues,
} from './form-utils';
import { getErrorMessage } from '@/utils/form-error';
import {
  useCreateProductMutation,
  useUpdateProductMutation,
} from '@/data/product';
import { split, join } from 'lodash';
import { number } from 'yup';

type ProductFormProps = {
  initialValues?: Product | null;
};

export default function CreateOrUpdateProductForm({
  initialValues,
}: ProductFormProps) {
  const router = useRouter();
  const [isSlugDisable, setIsSlugDisable] = useState<boolean>(true);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const { t } = useTranslation();

  const { data: shopData } = useShopQuery(
    { slug: router.query.shop as string },
    {
      enabled: !!router.query.shop,
    }
  );

  const shopId = shopData?.id!;
  const isNewTranslation = router?.query?.action === 'translate';
  const isSlugEditable =
    router?.query?.action === 'edit' &&
    router?.locale === Config.defaultLanguage;
  const methods = useForm<ProductFormValues>({
    resolver: yupResolver(productValidationSchema),
    shouldUnregister: true,
    // @ts-ignore
    defaultValues: getProductDefaultValues(initialValues!, isNewTranslation),
  });

  const {
    register,
    handleSubmit,
    control,
    setValue,
    setError,
    watch,
    formState: { errors },
  } = methods;

  const { mutate: createProduct, isLoading: creating } =
    useCreateProductMutation();
  const { mutate: updateProduct, isLoading: updating } =
    useUpdateProductMutation();

  const onSubmit = async (values: ProductFormValues) => {
    const inputValues = {
      language: router.locale,
      ...getProductInputValues(values, initialValues),
    };
// console.log(inputValues);

    try {
      if (
        !initialValues ||
        !initialValues.translated_languages.includes(router.locale!)
      ) {
        //@ts-ignore
        createProduct({
          ...inputValues,
          ...(initialValues?.slug && { slug: initialValues.slug }),
          shop_id: shopId || initialValues?.shop_id,
        });
      } else {
        //@ts-ignore
        updateProduct({
          ...inputValues,
          id: initialValues.id!,
          shop_id: initialValues.shop_id!,
        });
      }
    } catch (error) {
      const serverErrors = getErrorMessage(error);
      Object.keys(serverErrors?.validation).forEach((field: any) => {
        setError(field.split('.')[1], {
          type: 'manual',
          message: serverErrors?.validation[field][0],
        });
      });
    }
  };
  const product_type = watch('product_type');
  const is_digital = watch('is_digital');
  const is_external = watch('is_external');
  const slugAutoSuggest = join(split(watch('name'), ' '), '-').toLowerCase();
  return (
    <>
      {errorMessage ? (
        <Alert
          message={t(`common:${errorMessage}`)}
          variant="error"
          closeable={true}
          className="mt-5"
          onClose={() => setErrorMessage(null)}
        />
      ) : null}
      <FormProvider {...methods}>
        <form onSubmit={handleSubmit(onSubmit)} noValidate>
          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
            <Description
              title="ภาพปก"
              details="อัปโหลดรูปภาพแนะนำรถของคุณที่นี่"
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <FileInput name="image" control={control} multiple={false} />
            </Card>
          </div>

          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
            <Description
              title="แกลเลอรีรูปภาพ"
              details="อัปโหลดแกลเลอรีรูปภาพรถของคุณที่นี่ คุณสามารถอัปโหลดรูปภาพ 5-15 รูป"
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <FileInput name="gallery" control={control} />
            </Card>
          </div>
          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
            <Description
              title="อัพโหลดเอกสารเล่มทะเบียนรถ"
              details="ผู้ขายจำเป็นจะต้องลงเอกสารยืนยันตัวตน ได้แก่ เล่มทะเบียนรถ (ข้อมูลส่วนนี้จะไม่แสดงขึ้นบนเว็บไซต์)"
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <FileInput name="image_car" control={control} multiple={false} />
            </Card>
          </div>
          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
            <Description
              title="อัพโหลดเอกสารบัตรประชาชนเจ้าของรถ"
              details="บัตรประชาชนเจ้าของรถ ที่ชื่อตรงกับในเล่มทะเบียนรถ (ข้อมูลส่วนนี้จะไม่แสดงขึ้นบนเว็บไซต์)"
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <FileInput name="image_card" control={control} multiple={false} />
            </Card>
          </div>


          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
            <Description
              title="ข้อมูลทั่วไปเกี่ยวกับรถ"
              details="เลือกประเภทและยี่ห้อรถจากที่นี่"
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <ProductGroupInput
                control={control}
                error={t((errors?.type as any)?.message)}
              />
              <ProductCategoryInput
                control={control}
              />
              <ProductModelInput
                control={control}
                error={t((errors?.model as any)?.message)}
              />
              <ProductYearInput
                control={control}
                error={t((errors?.year as any)?.message)}
              />
              <ProductColorInput
                control={control}
                error={t((errors?.color as any)?.message)}
              />
              <ProductGearInput
                control={control}
                error={t((errors?.gear as any)?.message)}
              />
              <ProductProvinceInput
              setValue={setValue}
                control={control}
                error={t((errors?.province as any)?.message)}
              />
              <ProductCreditInput
                control={control}
              />
              <Input
                label={"เลขไมล์ (กม.)"}
                span={"*"}
                type="number"
                {...register('mileage')}
                error={t(errors.mileage?.message!)}
                variant="outline"
                className="mb-5"
              />
              <Input
                label={"เลขทะเบียนรถ"}
                {...register('number_plate')}
                variant="outline"
                className="mb-5"
              />
              <Input
              label={`${t('form:input-label-price')}`}
              {...register('price')}
              type="number"
              span={"*"}
              error={t(errors.price?.message!)}
              variant="outline"
              className="mb-5"
            />
              {/* <ProductCategoryInput control={control} setValue={setValue} /> */}
              {/* it's not needed in chawkbazar */}
              {/* <ProductAuthorInput control={control} /> */}
              {/* <ProductManufacturerInput control={control} setValue={setValue} /> */}
              {/* <ProductTagInput  control={control} setValue={setValue} /> */}
            </Card>
          </div>

          <div className="my-5 flex flex-wrap sm:my-8">
            <Description
              title="รายละเอียดรถ"
              details={`${
                initialValues
                  ? "แก้ไข"
                  : "เพิ่ม"
              } รายละเอียดและข้อมูลที่จำเป็นจากที่นี่`}
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <Input
                label="ชื่อ/หัวข้อ"
                span={"*"}
                placeholder="เช่น ขายรถมือสองดาวน์ 0% , รถมือสองออกรถง่าย"
                {...register('name')}
                error={t(errors.name?.message!)}
                variant="outline"
                className="mb-5"
              />

              {isSlugEditable ? (
                <div className="relative mb-5 hidden">
                  <Input
                    label={`${t('Slug')}`}
                    {...register('slug')}
                    error={t(errors.slug?.message!)}
                    variant="outline"
                    disabled={isSlugDisable}
                  />
                  <button
                    className="absolute top-[27px] right-px z-10 flex h-[46px] w-11 items-center justify-center rounded-tr rounded-br border-l border-solid border-border-base bg-white px-2 text-body transition duration-200 hover:text-heading focus:outline-none"
                    type="button"
                    title={t('common:text-edit')}
                    onClick={() => setIsSlugDisable(false)}
                  >
                    <EditIcon width={14} />
                  </button>
                </div>
              ) : (
                <Input
                  label={`${t('Slug')}`}
                  {...register('slug')}
                  value={slugAutoSuggest}
                  variant="outline"
                  className="mb-5 hidden"
                  disabled
                />
              )}
              <Input
                value={1}
                label={`${t('form:input-label-unit')}*`}
                {...register('unit')}
                variant="outline"
                className="mb-5 hidden"
              />

              <TextArea
                label="ข้อมูลรายละเอียด"
                span={"*"}
                placeholder="ใส่ข้อมูลรายละเอียด เพิ่มเติม"
                {...register('description')}
                error={t(errors.description?.message!)}
                variant="outline"
                className="mb-5"
              />
              <Input
                label="วิดีโอของรถ จะช่วยให้คุณได้รับความสนใจมากขึ้น (** ไม่มีค่าใช้จ่ายเพิ่มเติม)"
                placeholder="กรุณาใส่ลิ้งก์วิดีโอจาก Youtube"
                {...register('video_link')}
                variant="outline"
                className="mb-5"
              />

            {isSlugEditable ? (
                              <div>
                              <Label>{t('form:input-label-status')}</Label>
                              <Radio
                                {...register('status')}
                                label={t('form:input-label-published')}
                                id="published"
                                value="publish"
                                className="mb-2"
                              />
                              <Radio
                                {...register('status')}
                                id="draft"
                                label={t('form:input-label-draft')}
                                value="draft"
                              />
                            </div>

              ) : (
                <div className='hidden'>
                              <Radio
                                {...register('status')}
                                label={t('form:input-label-published')}
                                id="published"
                                value="publish"
                                className="mb-2"
                              />
                            </div>

              )}

            </Card>
          </div>
          <div className="my-5 flex flex-wrap sm:my-8">
            <Description
              title="ข้อมูลผู้ขาย"
              details={`${
                initialValues
                  ? "แก้ไข"
                  : "เพิ่ม"
              } รายละเอียดและข้อมูลที่จำเป็นจากที่นี่`}
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
            />

            <Card className="w-full sm:w-8/12 md:w-2/3">
              <Input
                label="ชื่อ-นามสกุล"
                span={"*"}
                {...register('fullname')}
                error={t(errors.fullname?.message!)}
                variant="outline"
                className="mb-5"
              />
              <Input
                label="ที่อยู่"
                span={"*"}
                {...register('address')}
                error={t(errors.address?.message!)}
                variant="outline"
                className="mb-5"
              />
              <Input
                label="หมายเลขโทรศัพท์"
                span={"*"}
                {...register('tel')}
                error={t(errors.tel?.message!)}
                variant="outline"
                className="mb-5"
              />
              <Input
                label="อีเมล"
                {...register('email')}
                variant="outline"
                className="mb-5"
              />
              <Input
                label="LINE ID"
                {...register('line')}
                variant="outline"
                className="mb-5"
              />



            </Card>
          </div>

          <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8 hidden">
            <Description
              title={t('form:form-title-product-type')}
              details={t('form:form-description-product-type')}
              className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pr-4 md:w-1/3 md:pr-5"
            />

            <ProductTypeInput />
          </div>

          {/* Simple Type */}
          {product_type?.value === ProductType.Simple && (
            <div className='hidden'>
            <ProductSimpleForm initialValues={initialValues} slugAutoSuggest={slugAutoSuggest} />
            </div>
          )}

          {/* Variation Type */}
          {/* {product_type?.value === ProductType.Variable && (
            <ProductVariableForm
              shopId={shopId}
              initialValues={initialValues}
            />
          )} */}

          <div className="mb-4 text-end">
            {initialValues && (
              <Button
                variant="outline"
                onClick={router.back}
                className="me-4"
                type="button"
              >
                กลับ
              </Button>
            )}
            <Button loading={updating || creating}>
              {initialValues
                ? "แก้ไข"
                : "บันทึก"}
            </Button>
          </div>
        </form>
      </FormProvider>
    </>
  );
}