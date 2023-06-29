import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useProvincesQuery } from '@/data/province';
import { useRouter } from 'next/router';

interface Props {
  control: Control<any>;
  error: string | undefined;
  setValue: any;

}

const ProductProvinceInput = ({ control, error ,setValue}: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { provinces, loading } = useProvincesQuery({
    limit: 200,
    language: locale,
  });
  return (
    <div className="mb-5">
      <Label>จังหวัด <span className="text-red-500">*</span></Label>
      <SelectInput
        name="province"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.id}
        options={provinces!}
        isLoading={loading}
      />
      <ValidationError message={t(error!)} />
    </div>
  );
};

export default ProductProvinceInput;
