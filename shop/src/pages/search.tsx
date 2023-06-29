import Container from '@components/ui/container';
import { getLayout } from '@components/layout/layout';
import Subscription from '@components/common/subscription';
import { ShopFilters } from '@components/shop/filters';
import StickyBox from 'react-sticky-box';
import Divider from '@components/ui/divider';
import ProductSearchBlock from '@components/product/product-search-block';

export { getStaticProps } from '@framework/products-filter.ssr';

export default function Shop() {
  return (
    <>
      <Divider className="mb-2" />
      <Container>
        <div className={`flex pt-8 pb-16 lg:pb-20`}>
          <div className="flex-shrink-0 hidden ltr:pr-24 rtl:pl-24 lg:block w-96">
            <StickyBox offsetTop={50} offsetBottom={20}>
              <ShopFilters />
            </StickyBox>
          </div>

          <div className="w-full ltr:lg:-ml-9 rtl:lg:-mr-9">
            <ProductSearchBlock />
          </div>
        </div>
        <Subscription />
      </Container>
    </>
  );
}

Shop.getLayout = getLayout;
