// @ts-check
import { defineConfig } from 'astro/config';
import node from '@astrojs/node';
import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';
import fs from 'node:fs';
import path from 'node:path';
import rehypeNewsletterCta from './src/lib/rehype-newsletter-cta.mjs';

// Mapa slug -> pubDate (para lastmod real en el sitemap).
// Se lee el frontmatter de cada post en build-time (sin dependencias extra).
const postsDir = path.resolve('./src/content/posts');
const lastmodPorSlug = {};
try {
  for (const f of fs.readdirSync(postsDir)) {
    if (!f.endsWith('.md')) continue;
    const src = fs.readFileSync(path.join(postsDir, f), 'utf8');
    const m = src.match(/^pubDate:\s*["']?([0-9]{4}-[0-9]{2}-[0-9]{2})/m);
    if (m) lastmodPorSlug[f.replace(/\.md$/, '')] = m[1];
  }
} catch (e) {
  // si falla, el sitemap se genera sin lastmod
}

// https://astro.build/config
export default defineConfig({
  site: 'https://analisis.pruebapublica.com',
  output: 'static',
  adapter: node({ mode: 'standalone' }),
  integrations: [
    sitemap({
      filter: (page) => !page.includes('/admin/'),
      serialize(item) {
        const m = item.url.match(/\/posts\/([^/]+)\/?$/);
        if (m && lastmodPorSlug[m[1]]) {
          item.lastmod = new Date(lastmodPorSlug[m[1]]).toISOString();
        }
        return item;
      },
    }),
  ],
  markdown: {
    // CTA de newsletter a mitad de cada artículo (tras el 2º <h2>).
    rehypePlugins: [rehypeNewsletterCta],
  },
  vite: { plugins: [tailwindcss()] },
});
