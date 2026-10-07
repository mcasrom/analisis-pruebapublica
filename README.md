# Análisis · Blog de geopolítica

Blog de geopolítica y análisis político en **Astro (SSG)** para
`https://analisis.pruebapublica.com`. Estática generada + endpoints API
dinámicos (likes/comentarios/suscripción) en Node, desplegado con Nginx + PM2.

## Stack
- **Astro** (SSG) + **TailwindCSS** (v4). Cero frameworks pesados.
- **Islas** mínimas: botón de like (contador vivo vía `GET /api/like/:slug`),
  formulario de comentario y formulario de newsletter.
- **SQLite** local (`better-sqlite3`), un único `.db` (tablas `likes`,
  `comments`, `subscribers`) persistido en `data/` **fuera de `dist/`** para que
  el build SSG no lo borre.
- Endpoints API: `GET/POST /api/like/:slug`, `POST /api/comment/:slug`,
  `GET /api/comments/:slug`, `POST /api/subscribe`, `/api/admin/*`.
- **Búsqueda estática** (sin backend): índice JSON generado en build
  (`src/pages/buscar.json.ts` → `/buscar.json`) + página `/buscar` que filtra
  client-side. Ver sección **Búsqueda**.
- **Cross-CTA con el Radar FIMI**: los posts de temas cubiertos por el radar
  (`fimi.viajeinteligencia.com`) llevan un bloque "Este tema, en vivo" que
  deep-linkea al tema por hash; el radar enlaza de vuelta al análisis.

## Local
```bash
npm install
npm run dev        # dev
npm run build      # build a dist/
npm run start      # sirve dist/ (entry.mjs) en el puerto del .env
```

## Configuración
- `ADMIN_SECRET` (env): clave para `/admin/comentarios` y `/api/admin/comments`.
- `PORT` (env): puerto del server Node (default 3005; en prod 3018).
- `DATA_DIR` (env): ruta del `.db` (default `data/` junto al proyecto).

## Despliegue (server Hetzner)
```bash
# en el server
cd /home/deploy && git clone <repo> analisis-pruebapublica
cd analisis-pruebapublica
npm install --production
npm run build
# ADMIN_SECRET real en el ecosystem o .env
pm2 start ecosystem.config.cjs --env production
```

### Nginx (vhost `analisis.pruebapublica.com`)
- `location /api/` → proxy a `127.0.0.1:3018`
- `location /admin/` → proxy a `127.0.0.1:3018`
- resto → sirve `dist/client/` (estático)
- cert Let's Encrypt + DNS A `analisis.pruebapublica.com` → `178.105.80.193`

## Contenido
- Posts en `src/content/posts/*.md` (frontmatter: `title`, `description`, `pubDate`,
  `tags`, `image`, `categoria`, `author`, `assisted`, `draft`, y opcionalmente
  `serie` + `serie_numero`).
- Post 0 editorial ("Qué es este blog") + serie **Ceuta 2026** (6 posts) + serie
  **Dereliction of Duty** (6 posts) + serie **Geopolítica 101** (11 posts) + serie
  **España 29-N** (2 posts, con cierre anunciado tras el 29-N).
- **Series declaradas por frontmatter**: `serie` agrupa y `serie_numero` ordena. El
  bloque de serie en `posts/[slug].astro` es genérico (chip "Serie · n/N" sobre el
  título + listado de partes enlazadas) y se genera a partir de esos dos campos, no
  de un tag concreto.
- **Índice de etiquetas `/tags`**: lista las 121 etiquetas con su recuento y enlaza a
  `/tags/<slug>/`. Accesible desde el nav del header.
- Tiempo de lectura calculado por post (`src/lib/readingTime.ts`).
- Compartir en **X, Bluesky, Mastodon y WhatsApp** (X cuenta el enlace como 23
  caracteres t.co para respetar el límite). Página `/categorias` como índice
  temático por tags con ≥ 2 posts + sidebar con "Temas populares".
- JSON-LD: `WebSite`/`Blog` en la portada + `Article` (autor Person, publisher
  con logo, `dateModified`, `wordCount`, `timeRequired`) por post.

## Búsqueda
- Página **`/buscar`**: buscador **client-side** (JS vanilla, sin dependencias ni
  servicios externos). Filtra por título, descripción, etiquetas y cuerpo del
  texto; insensible a acentos y mayúsculas; términos en AND; puntuación por
  relevancia (título ×10, tags ×6, descripción ×3, cuerpo ×1); resaltado con
  `<mark>`; estado vacío y `aria-live`; soporta `?q=` (compartible).
- Índice: **`src/pages/buscar.json.ts`** genera `/buscar.json` en build-time
  (~80 KB, una entrada por post con `slug, title, description, tags, categoria,
  date, url, body`; el markdown se limpia a texto plano y se trunca a 3000 chars).
  Se sirve como fichero estático desde `dist/client/`, así que **no requiere
  backend**.
- Accesos: icono de lupa en el header (siempre visible), entrada "Buscar" en el
  nav y enlace en el footer. La portada incluye `SearchAction` en su JSON-LD
  (habilita el cuadro de búsqueda de sitelinks en Google).

## SEO y captación
- **Schema.org**: por post se emiten `Article` + `BreadcrumbList` (Inicio → etiqueta →
  post) y, si el post declara `faq` en el frontmatter, `FAQPage` con contenido visible
  ("Preguntas frecuentes"). La portada lleva `WebSite` + `Blog` + `SearchAction`.
- **CTA de newsletter mid-post**: un plugin rehype (`src/lib/rehype-newsletter-cta.mjs`,
  registrado en `astro.config.mjs`) inserta un formulario de suscripción tras el 2º
  `<h2>` (o el 3er párrafo si no hay). Reutiliza las clases `.newsletter`/
  `.newsletter-form` que el `<script>` de `NewsletterForm.astro` ya conecta, así que
  funciona sin JS extra y no contamina el RSS.
- **FAQ por post**: campo opcional `faq: [{ q, a }]` en el frontmatter → bloque visible
  + `FAQPage`. Añadido a PISA, gasto en defensa y "Qué es la geopolítica".
- **Cross-links del ecosistema**: la landing de viajeinteligencia.com (tarjeta en
  "Análisis editorial" + footer), el radar de emergencias y las páginas de alquiler de
  municipal enlazan a `analisis.pruebapublica.com` para dirigir tráfico al blog.

## Reglas editoriales
- **Fuentes enlazadas**: toda afirmación factual con fuente lleva su URL real en
  el markdown (nunca inventada). Si no existe URL estable (libro clásico,
  declaración oral), se cita en texto plano.
- Frontmatter de la casa: `author: "M. Castillo"`, `assisted: "GenAI (...)"`,
  `categoria: "análisis"` y `image:` de portada.
- Cada post cierra con **nota sobre el proceso de elaboración** y firma
  `@pruebapublica`; los ensayos de opinión se marcan explícitamente como tales.
- `draft` **no está declarado** en `src/content.config.ts`, por lo que Astro lo
  ignora (no filtra). Por consistencia, todos los posts publicados usan
  `draft: false`; si algún día se quiere ocultar posts de verdad, hay que añadir
  el campo al esquema y filtrar en index/[slug]/tags/categorias/rss/sitemap.

## Auditoría editorial (`scripts/blog-audit.py`)
Script de solo lectura que puntúa cada artículo sobre **100** y escribe un reporte
Markdown. No modifica contenido ni toca la base de datos.

```bash
cd /home/deploy/analisis-pruebapublica
python3 scripts/blog-audit.py --salida blog-audit.md   # reporte en el repo
python3 scripts/blog-audit.py --json                  # salida JSON
```

- Rúbrica: título 4 · description ≤155 8 · pubDate 3 · autor 4 · tags ≥2 6 · OG image 8 ·
  `draft: false` 3 · `assisted` 4 · serie+número 8 · numeración consistente 6 ·
  enlace real al Radar FIMI 8 · enlace interno a otro post 14 · ≥2 fuentes
  externas enlazadas 12 · ≥600 palabras 12.
- `categoria` **no puntúa**: es el género del texto (`análisis` en todos los posts),
  no la temática. La temática vive en `tags` y en `serie`.
- El enlace al Radar FIMI se detecta buscando `fimi.viajeinteligencia.com` en un
  enlace markdown real, no por mencionar la palabra "FIMI" en el texto.
- **Por qué no todos los posts enlazan al radar**: el CTA del blog al radar solo se
  aplica a los posts cuyo tema tiene radar activo (mapeo `fimiPostMap` en
  `posts/[slug].astro`, 18 entradas). Meter un enlace en un post que no cubre ningún
  tema instrumentado sería publicidad, no una referencia útil, así que el criterio
  puntúa pero no se persigue: subir la nota exigiría inventar cobertura. Los ejes
  temáticos no cambian esto.
- Comprobaciones de serie: la numeración debe ser `1..N` sin huecos ni repetidos.
- El reporte versionado es `blog-audit.md` (se regenera, no se edita a mano).

## RSS
- `src/pages/rss.xml.js` declara `site: "https://analisis.pruebapublica.com"` de
  forma literal: en pre-render `Astro.site` es `undefined` y el build fallaba,
  dejando `dist/client/rss.xml` a 0 bytes y la URL respondiendo 520.
- `nginx` sirve el fichero como estático desde `dist/client/rss.xml`.
- El bot-block de nginx rechaza User-Agents de CLI (`curl`, `wget`) con 444, que
  Cloudflare refleja como 520. El feed es accesible con un UA de navegador; los
  lectores de feeds que usan UA propios pueden verse afectados.

## Ejes temáticos (`/temas`)
Ejes **curados a mano** que agrupan varios tags bajo una página con intención de
búsqueda. Se definen en `src/temas.ts` (un array `EJES`), no se derivan solos de los
tags: así se evita que un tag genérico (`geopolítica`, 26 posts) se lleve el eje
entero, y se puede exigir un mínimo de artículos por eje.

| Eje | Qué agrupa |
| --- | --- |
| `/temas/geopolitica-101/` | la serie completa (11 posts) en **orden de lectura** |
| `/temas/fabulas/` | la serie Fábulas del análisis (5 posts) en **orden de lectura** |
| `/temas/fronteras-y-migraciones/` | 15 posts, incluye las series Ceuta 2026 y Dereliction of Duty |
| `/temas/energia/` | petróleo, OEP+, oleoductos, gasoductos, corredor medio |
| `/temas/comercio-y-aranceles/` | aranceles, proteccionismo, economía política |
| `/temas/infraestructura-critica/` | cables submarinos, espacio, satélites |

- Un eje puede apoyarse en `serie` (Geopolítica 101, Fábulas del análisis) o en una lista de `tags`.
  Los tags de país o de tema tangential quedan fuera a propósito: `Venezuela` y
  `Ormuz` no meten el eje de energía, ni `economía` el de comercio.
- `src/pages/temas/index.astro` es el hub; `src/pages/temas/[eje].astro` genera una
  página por eje con `CollectionPage` + `BreadcrumbList` JSON-LD y el listado.
- Los ejes son **superponibles**: un post puede estar en varios (los estrechos
  aparece en energía y en comercio).
- El nav lleva "Temas" y "Etiquetas"; `/categorias` sigue existiendo como índice por
  etiqueta con ≥2 artículos y enlaza desde ambos.

## Series declaradas por frontmatter
`serie` agrupa y `serie_numero` ordena. El bloque de serie de
`posts/[slug].astro` es genérico: chip "Serie · n/N" sobre el título, más el listado
de partes, **limitado a 6** con enlace al eje para el resto.

- **Geopolítica 101** (10) — la numeración **no** se infiere de `pubDate` (hay
  empates: tres posts el 10-sep y dos el 13-sep). Sale de la lista que declara el
  propio post 8: «comenzó con *¿Qué es la geopolítica?* y continúa con petróleo,
  cables submarinos, el Ártico, la IA, el espacio y PISA».
- **Fábulas del análisis** (3) — 1) *El caballo que aprendió a cantar*, 2) *La llave
  de Nasrudín*, 3) *Los ciegos y el elefante*. Al formalizar la serie, el caballo
  salió de Geopolítica 101 (conserva el tag `geopolítica 101`). Series 1-2-3 por
  orden de publicación.
- **Ceuta 2026** (6) · **Dereliction of Duty** (5).
- **Barra lateral** (`src/components/Sidebar.astro`): la lista «Temas» muestra el
  top-8 de etiquetas por uso **más** una lista `FIJOS` siempre visible (hoy
  `['fábulas']`), para que una serie con pocos posts no quede enterrada.

## Normalización de etiquetas
Las etiquetas se duplicaban por mayúsculas y por slugs: `ceuta`/`Ceuta`,
`marruecos`/`Marruecos`, `Seguridad Nacional`/`seguridad nacional`, `rusia`/`Rusia`,
`ucrania`/`Ucrania`, `EE.UU.`/`Estados Unidos`, `IA`/`inteligencia artificial` y un
slug (`geopolítica-de-las-fronteras`) donde iba el texto. Un tag duplicado parte el
recuento en dos y crea páginas `/tags/` fantasma.

- Mapa canónico aplicado con `normalize_tags.py` (no se conserva en el repo: es
  una operación de una vez). Resultado: **129 → 121 etiquetas**.
- Quedan **74 etiquetas con un solo artículo**: no son un error (el índice las
  lista, pero no son páginas útiles) y son la vía por la que un eje gana sentido.
- `scripts/blog-audit.py` no penaliza la falta de eje; comprueba que, si un post
  declara serie, la numeración de la serie sea `1..N` sin huecos.

## Retención de datos
- **SQLite local** (`data/analisis.db`): likes, comments y suscriptores.
  Comentarios quedan `pendiente` hasta moderación (aprobado/rechazado).
  Crecimiento bajo.
- Documento central del ecosistema con todas las políticas: ver `RETENCION.md`
  en `mcasrom/nearme-osint`.
## Newsletter
- Alta con **doble opt-in**: `POST /api/subscribe` (email) → `GET /api/confirm?id=` confirma; `GET /api/unsubscribe?id=` da de baja. Tabla `subscribers` en `data/analisis.db`.
- **Funnel**: botón **«Suscribirse»** en la cabecera + página **`/suscribirse`** + formulario (`NewsletterForm`, variantes `inline`/`card`) en cada post y en la portada. Copy con apoyo al proyecto.
- **Envío**: `scripts/newsletter_send.py` lee los posts recientes del **RSS** y los manda por **Resend** a los confirmados, con enlace de baja. Cron mensual (`0 8 1 * *`). `--dry` genera `scripts/newsletter_preview.html`; `--test <email>` envía una prueba. (Resend está tras Cloudflare → la llamada necesita `User-Agent`.)

## Compartir, atribución y distribución
- Cada post lleva botones de **X, Bluesky, Mastodon, WhatsApp, Hacker News y LinkedIn**, todos con **UTM** (`?utm_source=…`) para atribuir el canal.
- Campo opcional **`abstract_en`** (frontmatter): resumen en inglés que se renderiza en un bloque **«In English»** al inicio del post (para envíos a HN/Lobste.rs, anglófonos).
- **Watchdog** `scripts/blog_watchdog_distribucion.py` (cron 2×/día): avisa por Telegram si un post reciente no se difundió en Mastodon/Bluesky.
