import Container from '@components/ui/container';
import { getLayout } from '@components/layout/layout';
import Divider from '@components/ui/divider';
import HeroWithCategoryFlash from '@containers/hero-with-category-flash';
import ProductsFlashSaleBlock from '@containers/product-flash-sale-block';
import ProductsNewArrivalBlock from '@containers/product-new-arrival-block';
import SiteMap from '@components/layout/footer/sitemap';

import {
  vintageDemoGridBanner as gridBanner,} from '@data/static/banners';

export { getStaticProps } from '@framework/homepage/vintage';

export default function Home() {
  return (
    <>
      <Container>
        <HeroWithCategoryFlash data={gridBanner} />
      </Container>
      <Container>
        <ProductsNewArrivalBlock variant="slider" />
        <ProductsFlashSaleBlock variant="slider" />
        {/* <BannerWithProducts
          sectionHeading="text-on-selling-products"
          categorySlug="/search"
          variant="reverse"
          data={productBanner}
        /> */}
        <SiteMap/>
      </Container>
      <Divider className="mb-0" />
    </>
  );
}

Home.getLayout = getLayout;
