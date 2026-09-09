// src/pages/rss.xml.js — Feed RSS completo del blog
import rss from '@astrojs/rss';
import { getCollection } from 'astro:content';

export async function GET(context) {
  const posts = (await getCollection('posts'))
    .filter((p) => !p.data.draft)
    .sort((a, b) => b.data.pubDate.valueOf() - a.data.pubDate.valueOf());
  return rss({
    title: 'Análisis — Geopolítica y análisis crítico del poder',
    description: 'Geopolítica, defensa, seguridad y análisis crítico del poder. Análisis editorial con fuentes contrastadas.',
    site: context.site,
    items: posts.map((post) => ({
      title: post.data.title,
      description: post.data.description,
      pubDate: post.data.pubDate,
      link: `/posts/${post.slug}/`,
      categories: post.data.tags,
    })),
    customData: '<language>es</language>',
  });
}
