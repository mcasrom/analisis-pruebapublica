#!/usr/bin/env bash
# Publica el post 1 de la serie 29N (5-nov-2026).
# Uso: ./scripts/publish_29n_post1.sh [--force]
set -euo pipefail
export PATH="/usr/local/bin:/usr/bin:/bin:/home/deploy/.local/bin"
ROOT="/home/deploy/analisis-pruebapublica"
DRAFT="$ROOT/borradores/29n-post-1-poder-de-medir.md"
DEST="$ROOT/src/content/posts/el-poder-de-medir.md"
SLUG="el-poder-de-medir"

TODAY=$(date -u +%F)
if [[ "$TODAY" < "2026-11-05" && "${1:-}" != "--force" ]]; then
  echo "[publish] No se publica antes del 2026-11-05 (usa --force para probar). Hoy: $TODAY"
  exit 1
fi
[ -f "$DRAFT" ] || { echo "[publish] falta el borrador: $DRAFT"; exit 1; }

cd "$ROOT"
git pull --ff-only || echo "[publish] aviso: pull falló; sigo con el árbol actual"
sed 's/^draft: true$/draft: false/' "$DRAFT" > "$DEST"
npm run build
pm2 restart analisis-pub >/dev/null
bash /home/deploy/scripts/cf_purge.sh pruebapublica >> /home/deploy/analisis-pruebapublica/logs/publish_29n_post1.log 2>&1 || echo "[publish] aviso: purge CF falló; purgar a mano"
git add "$DEST"
git commit -m "post: el poder de medir (serie 29N, 1/2)" || true
git push origin main || echo "[publish] aviso: push falló; hazlo a mano"

# difusión inmediata (Mastodon/Bluesky/Telegram; X manual al dueño)
cd /home/deploy/social-poster
/usr/bin/python3 blog_social.py --post el-poder-de-medir >> /home/deploy/analisis-pruebapublica/logs/publish_29n_post1.log 2>&1 || echo "[publish] aviso: blog_social falló; revisa social-poster/blog_social.log"
cd "$ROOT"

sleep 2
CODE=$(curl -s -o /dev/null -w "%{http_code}" -A "Mozilla/5.0" "https://analisis.pruebapublica.com/posts/$SLUG/")
echo "[publish] https://analisis.pruebapublica.com/posts/$SLUG/ -> HTTP $CODE"
if [ "$CODE" = "200" ]; then
  TMPC=$(mktemp)
  crontab -l 2>/dev/null | grep -v 'publish_29n_post1.sh' > "$TMPC" || true
  crontab "$TMPC"
  rm -f "$TMPC"
  echo "[publish] cron one-shot retirado"
else
  echo "[publish] NO se retira el cron: la página no devolvió 200"
fi
echo "[publish] difusión: blog_social.py la detecta en <=30 min; X manual."
