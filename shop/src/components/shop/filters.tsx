import { CategoryFilter } from "./category-filter";
// import { AdvancedFilter } from "./advanced-filter";
import { BrandFilter } from "./brand-filter";
import { FilteredItem } from "./filtered-item";
import { PriceFilter } from "./price-filter";
import { useRouter } from "next/router";
import isEmpty from "lodash/isEmpty";
import { useTranslation } from "next-i18next";
import { useAttributes } from "@framework/attributes";
import { AttributesFilter } from "@components/shop/attributes-filter";
// import SelectInput from "@/components/ui/select-input";

export const ShopFilters: React.FC = () => {
	const router = useRouter();
	const { pathname, query } = router;
	const { t } = useTranslation("common");
  const { data } = useAttributes();
  return (
		<div className="pt-1">
			<div className="block border-b border-gray-300 pb-7 mb-7">
				<div className="flex items-center justify-between mb-2.5">
					<h2 className="font-semibold text-xl md:text-xl text-[#274d85]">
						ค้นหารถมือสอง
					</h2>
					<button
						className="flex-shrink text-xs mt-0.5 transition duration-150 ease-in focus:outline-none hover:text-heading"
						aria-label="Clear All"
						onClick={() => {
							router.push(pathname);
						}}
					>
						ล้างค่า
					</button>
				</div>
				<div className="flex flex-wrap -m-1.5 pt-2">
					{!isEmpty(query) &&
						Object.values(query)
							.join(",")
							.split(",")
							.map((v, idx) => (
								<FilteredItem
									itemKey={
										Object.keys(query).find((k) => query[k]?.includes(v))!
									}
									itemValue={v}
									key={idx}
								/>
							))}
				</div>
			</div>
{/* <AdvancedFilter/> */}
			<CategoryFilter />
			<BrandFilter />
			<PriceFilter />

      {data && <AttributesFilter attributes={data} />}
		</div>
	);
};
