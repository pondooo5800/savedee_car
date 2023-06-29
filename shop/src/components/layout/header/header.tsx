import React, { useRef } from "react";
import SearchIcon from "@components/icons/search-icon";
import Logo from "@components/ui/logo";
import { useUI } from "@contexts/ui.context";
import { ROUTES } from "@lib/routes";
import { addActiveScroll } from "@utils/add-active-scroll";
import dynamic from "next/dynamic";
import { useTranslation } from "next-i18next";
import { useAtom } from "jotai";
import { authorizationAtom } from "@store/authorization-atom";
import { menu } from "@data/static/menus";
import HeaderMenu from "@components/layout/header/header-menu";
import LanguageSwitcher from '@components/ui/language-switcher';
import Button from '@components/ui/button';

import { IoCarSharp } from '@react-icons/all-files/io5/IoCarSharp';
import { AiFillCheckCircle } from "@react-icons/all-files/ai/AiFillCheckCircle";
const AuthMenu = dynamic(() => import("./auth-menu"), { ssr: false });
const CartButton = dynamic(() => import("@components/cart/cart-button"), {
	ssr: false,
});

interface Props {
	variant?: "default" | "modern";
}
const data = {
	buttonText: 'ขายรถของคุณ',
  };

type DivElementRef = React.MutableRefObject<HTMLDivElement>;
const Header: React.FC<Props> = ({
	variant = "default"
}) => {
	const {
		openSidebar,
		setDrawerView,
		openSearch,
		openModal,
		setModalView,
	} = useUI();
  const [ isAuthorize ] = useAtom(authorizationAtom);
	const { t } = useTranslation("common");
	const siteHeaderRef = useRef() as DivElementRef;
	addActiveScroll(siteHeaderRef);

	function handleLogin() {
		setModalView("LOGIN_VIEW");
		return openModal();
	}
	function handleMobileMenu() {
		setDrawerView("MOBILE_MENU");
		return openSidebar();
	}
	const isMultiLangEnable =
		process.env.NEXT_PUBLIC_ENABLE_MULTI_LANG === 'true' &&
		!!process.env.NEXT_PUBLIC_AVAILABLE_LANGUAGES;
  return (
    <header
      id="siteHeader"
      ref={siteHeaderRef}
      className="w-full h-16 sm:h-20 lg:h-24 relative z-20"
    >
      <div className="innerSticky text-gray-700 body-font fixed bg-white w-full h-16 sm:h-20 lg:h-24 z-20 ltr:pl-4 ltr:lg:pl-6 ltr:pr-4 ltr:lg:pr-6 rtl:pr-4 rtl:lg:pr-6 rtl:pl-4 rtl:lg:pl-6 transition duration-200 ease-in-out">
        <div className="flex items-center justify-center mx-auto max-w-[1920px] h-full w-full">
          <button
            aria-label="Menu"
            className={`menuBtn md:flex ${
              variant !== 'modern'
                ? 'hidden lg:hidden px-5 2xl:px-7'
                : 'ltr:pr-7 rtl:pl-7 hidden md:block'
            } flex-col items-center justify-center flex-shrink-0 h-full outline-none focus:outline-none`}
            onClick={handleMobileMenu}
          >
            <span className="menuIcon">
              <span className="bar" />
              <span className="bar" />
              <span className="bar" />
            </span>
          </button>
          <Logo />

          {isMultiLangEnable ? (
            <div className="flex-shrink-0 ltr:ml-auto rtl:mr-auto md:hidden flex">
              <LanguageSwitcher />
            </div>
          ) : (
            ''
          )}

          {variant !== 'modern' ? (
            <HeaderMenu
              data={menu}
              className="hidden lg:flex ltr:md:ml-6 ltr:xl:ml-10 rtl:md:mr-6 rtl:xl:mr-10"
            />
          ) : (
            ''
          )}

          <div className="hidden md:flex justify-end items-center space-x-6 lg:space-x-5 xl:space-x-8 2xl:space-x-10 rtl:space-x-reverse ltr:ml-auto rtl:mr-auto flex-shrink-0">
            {isMultiLangEnable ? (
              <div className="ms-auto lg:me-5 xl:me-8 2xl:me-10 flex-shrink-0">
                <LanguageSwitcher />
              </div>
            ) : (
              ''
            )}
            <button
              className="flex items-center justify-center flex-shrink-0 h-auto relative focus:outline-none transform"
              onClick={openSearch}
              aria-label="search-button"
            >
            </button>
            <Button>
              <a href={'#'} target="_blank" rel="noreferrer" className="flex">
			  <IoCarSharp className="text-lg ltr:ml-2 rtl:mr-2 md:text-xl" size={22} />
				&nbsp;
			  &nbsp;
			 ขายรถของคุณ
              </a>
            </Button>
            <div className="-mt-0.5 flex-shrink-0">
            </div>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
