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
  `tags`, `image`, `categoria`, `author`, `assisted`, `draft`).
- Post 0 editorial ("Qué es este blog") + serie **Crisis de Ceuta 2026** (6 posts,
  bloque "Parte de la serie"), + serie **Geopolítica 101** en curso.
- Tiempo de lectura calculado por post (`src/lib/readingTime.ts`).
- Compartir en **X, Bluesky, Mastodon y WhatsApp** (X cuenta el enlace como 23
  caracteres t.co para respetar el límite). Página `/categorias` como índice
  temático por tags con ≥ 2 posts + sidebar con "Temas populares".
- JSON-LD: `WebSite`/`Blog` en la portada + `Article` (autor Person, publisher
  con logo, `dateModified`, `wordCount`, `timeRequired`) por post.

## Retención de datos
- **SQLite local** (`data/analisis.db`): likes, comments y suscriptores.
  Comentarios quedan `pendiente` hasta moderación (aprobado/rechazado).
  Crecimiento bajo.
- Documento central del ecosistema con todas las políticas: ver `RETENCION.md`
  en `mcasrom/nearme-osint`.