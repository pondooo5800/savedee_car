import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useGearsQuery } from '@/data/gear';
import { useRouter } from 'next/router';

interface Props {
  control: Control<any>;
  error: string | undefined;
}

const ProductGearInput = ({ control, error }: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { gears, loading } = useGearsQuery({
    limit: 200,
    language: locale,
  });
  return (
    <div className="mb-5">
      <Label>ระบบเกียร์ <span className="text-red-500">*</span></Label>
      <SelectInput
        name="gear"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.value}
        options={gears!}
        isLoading={loading}
      />
      <ValidationError message={t(error!)} />
    </div>
  );
};

export default ProductGearInput;
