import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useRouter } from 'next/router';
import { useCategoriesQuery } from '@/data/category';
import { log } from 'console';
interface Props {
  control: Control<any>;
}
const ProductCategoryInput = ({ control }: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { categories, loading } = useCategoriesQuery({
    limit: 200,
    language: locale,
  });
  return (
    <div className="mb-5">
      <Label>ยี่ห้อ <span className="text-red-500">*</span></Label>
      <SelectInput
        name="categories"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.id}
        options={categories!}
        isLoading={loading}
      />
      {/* <ValidationError message={t(error!)} /> */}
    </div>
  );
};

export default ProductCategoryInput;
