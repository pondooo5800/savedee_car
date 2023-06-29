import { Table } from '@/components/ui/table';
import { Product, Shop, ProductType } from '@/types';
import usePrice from '@/utils/use-price';
import { useRouter } from 'next/router';
import { useTranslation } from 'next-i18next';
import { useIsRTL } from '@/utils/locals';

export type IProps = {
  products: Product[] | null | undefined;
  title?: string;
};

const PopularProductList = ({ products, title }: IProps) => {
  const router = useRouter();
  const { t } = useTranslation();
  const { alignLeft, alignRight } = useIsRTL();

  let columns = [
    {
      title: 'ลำดับ',
      dataIndex: 'id',
      key: 'id',
      align: 'center',
      width: 64,
    },
    {
      title: 'ชื่อ',
      dataIndex: 'name',
      key: 'name',
      align: alignLeft,
      width: 200,
      render: (name: string) => (
        <span className="whitespace-nowrap">{name}</span>
      ),
    },
    {
      title: 'ประเภทรถ',
      dataIndex: 'type',
      key: 'type',
      align: 'center',
      width: 120,
      render: (type: any) => (
        <span className="whitespace-nowrap">{type?.name}</span>
      ),
    },
    {
      title: 'ยี่ห้อ',
      dataIndex: 'categories',
      key: 'categories',
      align: 'center',
      width: 120,
      render: (categories: any) => (
        <span className="whitespace-nowrap">{categories?.[0].name}</span>
      ),
    },
    {
      title: 'รุ่น',
      dataIndex: 'model',
      key: 'model',
      align: 'center',
      width: 120,
      render: (model: any) => (
        <span className="whitespace-nowrap">{model?.name}</span>
      ),
    },

    {
      title: 'เต็นท์รถ',
      dataIndex: 'shop',
      key: 'shop',
      width: 120,
      align: 'center',
      ellipsis: true,
      render: (shop: Shop) => (
        <span className="truncate whitespace-nowrap">{shop?.name}</span>
      ),
    },

    {
      title: 'ราคาขาย',
      dataIndex: 'price',
      key: 'price',
      align: alignRight,
      width: 160,
      render: function Render(value: number, record: Product) {
        const { price: max_price } = usePrice({
          amount: record?.max_price as number,
        });
        const { price: min_price } = usePrice({
          amount: record?.min_price as number,
        });

        const { price } = usePrice({
          amount: value,
        });

        const renderPrice =
          record?.product_type === ProductType.Variable
            ? `${min_price} - ${max_price}`
            : price;

        return (
          <span className="whitespace-nowrap" title={renderPrice}>
            {renderPrice}
          </span>
        );
      },
    },
    // {
    //   title: t('table:table-item-quantity'),
    //   dataIndex: 'quantity',
    //   key: 'quantity',
    //   align: 'center',
    //   width: 80,
    // },
  ];

  if (router?.query?.shop) {
    columns = columns?.filter((column) => column?.key !== 'shop');
  }

  return (
    <div className="mb-6 overflow-hidden rounded shadow">
      <h3 className="border-b border-border-200 bg-light px-4 py-3 text-center font-semibold text-heading">
        {title}
      </h3>
      <Table
        //@ts-ignore
        columns={columns}
        emptyText="ข้อมูลรถทั้งหมด"
        //@ts-ignore
        data={products}
        rowKey="id"
        scroll={{ x: 700 }}
      />
    </div>
  );
};

export default PopularProductList;
