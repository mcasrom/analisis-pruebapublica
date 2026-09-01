// src/content.config.ts
import { defineCollection, z } from 'astro:content';

const posts = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    pubDate: z.coerce.date(),
    tags: z.array(z.string()).default([]),
    image: z.string().optional(),
    categoria: z.string().default('análisis'),
  }),
});

export const collections = { posts };
