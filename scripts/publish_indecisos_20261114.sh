#!/usr/bin/env bash
# Publica el post de indecisos del 29N (14-nov-2026, 07:30 CET).
set -euo pipefail
export PATH="/usr/local/bin:/usr/bin:/bin:/home/deploy/.local/bin"
ROOT="/home/deploy/analisis-pruebapublica"
DRAFT="$ROOT/borradores/indecisos-29n.md"
DEST="$ROOT/src/content/posts/indecisos-29n.md"
SLUG="indecisos-29n"
LOG="$ROOT/logs/publish_indecisos_20261114.log"

[ -f "$DRAFT" ] || { echo "[publish] falta el borrador: $DRAFT"; exit 1; }

cd "$ROOT"
git pull --ff-only || echo "[publish] aviso: pull falló; sigo con el árbol actual"
sed 's/^draft: true$/draft: false/' "$DRAFT" > "$DEST"
if ! npm run build; then
  rm -f "$DEST"
  echo "[publish] build falló; no se publica" >> "$LOG"
  exit 1
fi
pm2 restart analisis-pub >/dev/null
bash /home/deploy/scripts/cf_purge.sh pruebapublica >> "$LOG" 2>&1 || echo "[publish] aviso: purge CF falló; purgar a mano"

git add "$DEST"
git commit -m "post: los indecisos no son un bloque (29N)" || true
git push origin main || echo "[publish] aviso: push falló; hazlo a mano"

cd /home/deploy/social-poster
/usr/bin/python3 blog_social.py --post "$SLUG" >> "$LOG" 2>&1 || echo "[publish] aviso: blog_social falló; revisa social-poster/blog_social.log"
cd "$ROOT"

sleep 2
CODE=$(curl -s -o /dev/null -w "%{http_code}" -A "Mozilla/5.0" "https://analisis.pruebapublica.com/posts/$SLUG/")
echo "[publish] https://analisis.pruebapublica.com/posts/$SLUG/ -> HTTP $CODE" >> "$LOG"
if [ "$CODE" = "200" ]; then
  TMPC=$(mktemp)
  crontab -l 2>/dev/null | grep -v 'publish_indecisos_20261114.sh' > "$TMPC" || true
  crontab "$TMPC"
  rm -f "$TMPC"
  echo "[publish] cron one-shot retirado" >> "$LOG"
else
  echo "[publish] NO se retira el cron: la página no devolvió 200" >> "$LOG"
fi
