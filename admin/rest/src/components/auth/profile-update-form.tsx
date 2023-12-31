import Input from '@/components/ui/input';
import { useForm } from 'react-hook-form';
import Button from '@/components/ui/button';
import Description from '@/components/ui/description';
import Card from '@/components/common/card';
import { useUpdateUserMutation } from '@/data/user';
import TextArea from '@/components/ui/text-area';
import { useTranslation } from 'next-i18next';
import FileInput from '@/components/ui/file-input';
import pick from 'lodash/pick';
import SwitchInput from '@/components/ui/switch-input';
import Label from '@/components/ui/label';
import { adminOnly, getAuthCredentials, hasAccess } from '@/utils/auth-utils';

type FormValues = {
  name: string;
  profile: {
    id: string;
    bio: string;
    contact: string;
    avatar: {
      thumbnail: string;
      original: string;
      id: string;
    };
    notifications: {
      email: string;
      enable: boolean;
    };
  };
};

export default function ProfileUpdate({ me }: any) {
  const { t } = useTranslation();
  const { mutate: updateUser, isLoading: loading } = useUpdateUserMutation();
  const { permissions } = getAuthCredentials();
  let permission = hasAccess(adminOnly, permissions);
  const {
    register,
    handleSubmit,
    control,
    formState: { errors },
  } = useForm<FormValues>({
    defaultValues: {
      ...(me &&
        pick(me, [
          'name',
          'profile.bio',
          'profile.contact',
          'profile.avatar',
          'profile.notifications.email',
          'profile.notifications.enable',
        ])),
    },
  });

  async function onSubmit(values: FormValues) {
    const { name, profile } = values;
    const { notifications } = profile;
    const input = {
      id: me?.id,
      input: {
        name: name,
        profile: {
          id: me?.profile?.id,
          bio: profile?.bio,
          contact: profile?.contact,
          avatar: {
            thumbnail: profile?.avatar?.thumbnail,
            original: profile?.avatar?.original,
            id: profile?.avatar?.id,
          },
          notifications: {
            ...notifications,
          },
        },
      },
    };
    updateUser({ ...input });
  }

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
        <Description
          title="รูปภาพโปรไฟล์"
          details="อัปโหลดรูปโปรไฟล์ของคุณจากที่นี่ ขนาดควรเป็น 140 x 140px"
          className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
        />

        <Card className="w-full sm:w-8/12 md:w-2/3">
          <FileInput name="profile.avatar" control={control} multiple={false} />
        </Card>
      </div>
      {/* {permission ? (
        <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
          <Description
            title="การแจ้งเตือนทางอีเมล"
            details="ตั้งค่าการแจ้งเตือนทางอีเมลของคุณสำหรับคุณสมบัติการส่งข้อความ"
            className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
          />

          <Card className="mb-5 w-full sm:w-8/12 md:w-2/3">
            <Input
              label="อีเมลแจ้งเตือน"
              {...register('profile.notifications.email')}
              error={t(errors?.profile?.notifications?.email?.message!)}
              variant="outline"
              className="mb-5"
              type="email"
            />
            <div className="flex items-center gap-x-4">
              <SwitchInput
                name="profile.notifications.enable"
                control={control}
              />
              <Label className="mb-0">
              เปิดใช้งานการแจ้งเตือน
              </Label>
            </div>
          </Card>
        </div>
      ) : (
        ''
      )} */}
      <div className="my-5 flex flex-wrap border-b border-dashed border-border-base pb-8 sm:my-8">
        <Description
            title="ข้อมูล"
            details="เพิ่มข้อมูลโปรไฟล์ของคุณจากที่นี่"
          className="w-full px-0 pb-5 sm:w-4/12 sm:py-8 sm:pe-4 md:w-1/3 md:pe-5"
        />

        <Card className="mb-5 w-full sm:w-8/12 md:w-2/3">
          <Input
            label="ชื่อ"
            {...register('name')}
            error={t(errors.name?.message!)}
            variant="outline"
            className="mb-5"
          />
          <TextArea
            label="รายละเอียด"
            {...register('profile.bio')}
            error={t(errors.profile?.bio?.message!)}
            variant="outline"
            className="mb-6"
          />
          <Input
            label="ข้อมูลติดต่อ"
            {...register('profile.contact')}
            error={t(errors.profile?.contact?.message!)}
            variant="outline"
            className="mb-5"
          />
        </Card>
        <div className="w-full text-end">
          <Button loading={loading} disabled={loading}>
            บันทึก
          </Button>
        </div>
      </div>
    </form>
  );
}
