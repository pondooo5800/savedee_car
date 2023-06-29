/** @type {import('next').NextConfig} */
const runtimeCaching = require('next-pwa/cache');
const { i18n } = require('./next-i18next.config');
const withPWA = require('next-pwa')({
  disable: process.env.NODE_ENV === 'development',
  dest: 'public',
  runtimeCaching,
});

module.exports = withPWA({
  reactStrictMode: true,
  i18n,
  images: {
    domains: [
      'api.xn--72ch1ai7bom2d0ab6f1a3i.com',
      '127.0.0.1',
      '127.0.0.1:8000',
      'localhost',
      'api.เซฟดีรถมือสอง.com',
      '15.235.150.168',
      'chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com'
    ],
  },
  ...(process.env.APPLICATION_MODE === 'production' && {
    typescript: {
      ignoreBuildErrors: true,
    },
    eslint: {
      ignoreDuringBuilds: true,
    },
  }),
});
