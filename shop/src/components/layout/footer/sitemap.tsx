import Widgets from "./widgets-sitemap";
import { footer } from "./data";
const { widgets, payment } = footer;

const Sitemap: React.FC = () => (
  <footer className="border-heading mt-9 md:mt-11 lg:mt-16 3xl:mt-20 pt-2.5 lg:pt-0 2xl:pt-2">
    <Widgets widgets={widgets} />
  </footer>
);

export default Sitemap;
