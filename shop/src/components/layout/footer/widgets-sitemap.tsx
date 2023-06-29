import Container from "@components/ui/container";
import WidgetLink from "@components/widgets/widget-link-map";


const Widgets: React.FC = () => {
  return (
    <Container>
      {/* <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-6 gap-5 md:gap-9 lg:gap-x-8 xl:gap-5  pb-9 md:pb-14 lg:pb-16 2xl:pb-20 3xl:pb-24 lg:mb-0.5 2xl:mb-0 3xl:-mb-1"> */}
      <WidgetLink />
        {/* {widgets.map((widget, index) => (
          <WidgetLink data={widget} key={`widget-link-${index}`} />
        ))} */}
      {/* </div> */}
    </Container>
  );
};

export default Widgets;
