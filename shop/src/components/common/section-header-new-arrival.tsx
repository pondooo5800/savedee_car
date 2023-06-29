import Text from "@components/ui/text";
import Link from "@components/ui/link";
import { useTranslation } from "next-i18next";

interface Props {
	sectionHeading: string;
	categorySlug?: string;
	className?: string;
}

const SectionHeaderNewArrival: React.FC<Props> = ({
	sectionHeading = "text-section-title",
	className = "pb-0.5 mb-4 md:mb-5 lg:mb-6 2xl:mb-7 3xl:mb-8",
}) => {
	return (
		<div
			className={`flex items-center justify-between -mt-2 lg:-mt-2.5 ${className}`}
		>
			<Text variant="mediumHeading">{sectionHeading}</Text>
		</div>
	);
};

export default SectionHeaderNewArrival;
