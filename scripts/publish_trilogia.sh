#!/usr/bin/env bash
# Publica un post de la trilogía Democracia y legitimidad.
# Uso: publish_trilogia.sh <slug>
set -euo pipefail
export PATH="/usr/local/bin:/usr/bin:/bin:/home/deploy/.local/bin"
ROOT="/home/deploy/analisis-pruebapublica"
SLUG="${1:?falta slug}"
DEST="$ROOT/src/content/posts/$SLUG.md"
LOG="$ROOT/logs/publish_trilogia.log"
mkdir -p "$ROOT/logs"
cd "$ROOT"
[ -f "$DEST" ] || { echo "[trilogia] falta $DEST"; exit 1; }
grep -q '^draft: true$' "$DEST" || { echo "[trilogia] $SLUG no está en draft"; exit 1; }
cp "$DEST" "$DEST.bak-trilogia"
sed -i 's/^draft: true$/draft: false/' "$DEST"
if ! npm run build >>"$LOG" 2>&1; then
  mv "$DEST.bak-trilogia" "$DEST"
  echo "[trilogia] build falló; se restaura draft:true"
  exit 1
fi
pm2 restart analisis-pub >/dev/null
bash /home/deploy/scripts/cf_purge.sh pruebapublica >>"$LOG" 2>&1 || echo "[trilogia] aviso: purge CF falló"
git add "$DEST"
git commit -m "post: $SLUG (Democracia y legitimidad)" >>"$LOG" 2>&1 || true
git push origin main >>"$LOG" 2>&1 || echo "[trilogia] aviso: push falló"
cd /home/deploy/social-poster
/usr/bin/python3 blog_social.py --post "$SLUG" >>"$LOG" 2>&1 || echo "[trilogia] aviso: blog_social falló"
cd "$ROOT"
sleep 2
CODE=$(curl -s -o /dev/null -w "%{http_code}" -A "Mozilla/5.0" "https://analisis.pruebapublica.com/posts/$SLUG/")
echo "[trilogia] $SLUG -> HTTP $CODE"
if [ "$CODE" = "200" ]; then
  TMPC=$(mktemp)
  crontab -l 2>/dev/null | grep -v "publish_trilogia.sh $SLUG" > "$TMPC" || true
  crontab "$TMPC"
  rm -f "$TMPC"
  echo "[trilogia] cron one-shot retirado"
else
  echo "[trilogia] NO se retira el cron: HTTP $CODE"
fi
