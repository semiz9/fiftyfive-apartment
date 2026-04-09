import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  site: 'https://semiz-kaltenleutgeben.pages.dev',
  integrations: [
    tailwind(),
  ],
  output: 'static',
});
