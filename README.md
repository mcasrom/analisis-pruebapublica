# Análisis · Blog de geopolítica

Blog de geopolítica y análisis político en **Astro (SSG)** para
`https://analisis.pruebapublica.com`. Estática generada + endpoints API
dinámicos (likes/comentarios) en Node, desplegado con Nginx + PM2.

## Stack
- **Astro** (SSG) + **TailwindCSS** (v4). Cero frameworks pesados.
- **Islas** mínimas: botón de like y formulario de comentario.
- **SQLite** local (`better-sqlite3`), un único `.db` con tablas `likes` y `comments`.
- Endpoints API: `POST /api/like/:slug`, `POST /api/comment/:slug`, `GET /api/comments/:slug`, `/api/admin/comments`.

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
- Posts en `src/content/posts/*.md` (frontmatter: `title`, `description`, `pubDate`, `tags`, `image`, `categoria`).
- El primer post (`la-geopolitica-de-las-vacaciones.md`) es una **estructura con párrafo placeholder** — el texto político lo redacta el autor.

## Retención de datos
- **SQLite local** (`data/analisis.db`): likes y comments. Comentarios quedan
  `pendiente` hasta moderación (aprobado/rechazado). Crecimiento bajo.
- Documento central del ecosistema con todas las políticas: ver `RETENCION.md`
  en `mcasrom/nearme-osint`.
