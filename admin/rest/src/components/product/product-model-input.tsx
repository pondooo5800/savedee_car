import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useModelsQuery } from '@/data/model';
import { useRouter } from 'next/router';

interface Props {
  control: Control<any>;
  error: string | undefined;
}

const ProductModelInput = ({ control, error }: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { models, loading } = useModelsQuery({
    limit: 500,
    language: locale,
  });
  return (
    <div className="mb-5">
      <Label>รุ่น <span className="text-red-500">*</span></Label>
      <SelectInput
        name="model"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.id}
        options={models!}
        isLoading={loading}
      />
      <ValidationError message={t(error!)} />
    </div>
  );
};

export default ProductModelInput;
