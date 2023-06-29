import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useYearQuery } from '@/data/year';
import { useRouter } from 'next/router';

interface Props {
  control: Control<any>;
  error: string | undefined;
}
const ProductYearInput = ({ control, error }: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { year, loading } = useYearQuery({
    limit: 200,
    language: locale,
  });

  return (
    <div className="mb-5">
      <Label>ปี <span className="text-red-500">*</span></Label>
      <SelectInput
        name="year"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.id}
        options={year!}
        isLoading={loading}
      />
      <ValidationError message={t(error!)} />
    </div>
  );
};

export default ProductYearInput;
