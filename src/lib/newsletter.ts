// src/lib/newsletter.ts
// Temas de suscripción del boletín ("te aviso de X"). Fuente única de verdad:
// el formulario, la API y el saneado la comparten.
export type TemaNewsletter = { slug: string; label: string };

export const TEMAS_NEWSLETTER: TemaNewsletter[] = [
  { slug: 'fronteras-y-migraciones', label: 'Ceuta, fronteras y migraciones' },
  { slug: 'defensa', label: 'Defensa y amenazas híbridas' },
  { slug: 'geopolitica-101', label: 'Geopolítica 101 (iniciación)' },
  { slug: 'energia', label: 'Energía y materias primas' },
  { slug: 'comercio-y-aranceles', label: 'Comercio y aranceles' },
  { slug: 'infraestructura-critica', label: 'Infraestructura crítica (cables, espacio)' },
  { slug: 'fimi', label: 'Observatorio FIMI (amplificación)' },
  { slug: 'fabulas', label: 'Fábulas y método' },
];

export const TEMAS_SLUGS = new Set(TEMAS_NEWSLETTER.map((t) => t.slug));

export function sanearTemas(input: unknown): string[] {
  if (!Array.isArray(input)) return [];
  return [
    ...new Set(
      input
        .map((x) => String(x).trim().toLowerCase())
        .filter((s) => TEMAS_SLUGS.has(s))
    ),
  ];
}
