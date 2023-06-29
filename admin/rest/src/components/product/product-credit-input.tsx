import SelectInput from '@/components/ui/select-input';
import Label from '@/components/ui/label';
import ValidationError from '@/components/ui/form-validation-error';
import { Control } from 'react-hook-form';
import { useTranslation } from 'next-i18next';
import { useCreditsQuery } from '@/data/credit';
import { useRouter } from 'next/router';

interface Props {
  control: Control<any>;
}

const ProductCreditInput = ({ control }: Props) => {
  const { t } = useTranslation();
  const { locale } = useRouter();
  const { credits, loading } = useCreditsQuery({
    limit: 200,
    language: locale,
  });
  return (
    <div className="mb-5">
      <Label>สินเชื่อรถยนต์ </Label>
      <SelectInput
        name="credit"
        control={control}
        getOptionLabel={(option: any) => option.name}
        getOptionValue={(option: any) => option.id}
        options={credits!}
      />
    </div>
  );
};

export default ProductCreditInput;
