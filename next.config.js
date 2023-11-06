/** @type {import('next').NextConfig} */
const config = {
  theme: "nextra-theme-docs",
  themeConfig: "./theme.config.tsx",
};
const withNextra = require("nextra")(config);
module.exports = withNextra();
