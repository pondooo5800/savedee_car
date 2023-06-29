import Cookies from 'js-cookie';
import { AUTH_TOKEN } from '@lib/constants';
export function useToken() {
  return {
    setToken(token: string) {
      Cookies.set(AUTH_TOKEN, token, { expires: 1 });
    },
    getToken() {
      return Cookies.get(AUTH_TOKEN);
    },
    removeToken() {
      Cookies.remove(AUTH_TOKEN);
    },
    hasToken() {
      const token = Cookies.get(AUTH_TOKEN);
      if (!token) return false;
      return true;
    },
  };
}
