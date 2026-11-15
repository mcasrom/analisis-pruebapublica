#!/usr/bin/env bash
# Publica el post de participación del 29N el 22-nov-2026.
set -euo pipefail
export PATH="/usr/local/bin:/usr/bin:/bin:/home/deploy/.local/bin"
ROOT="/home/deploy/analisis-pruebapublica"
POST="$ROOT/src/content/posts/participacion-65-75-29n.md"
SLUG="participacion-65-75-29n"
LOG="$ROOT/logs/publish_participacion.log"
TODAY=$(date -u +%F)
if [[ "$TODAY" < "2026-11-22" && "${1:-}" != "--force" ]]; then
  echo "[publish] No se publica antes del 2026-11-22. Hoy: $TODAY" | tee -a "$LOG"
  exit 1
fi
[ -f "$POST" ] || { echo "[publish] falta $POST" | tee -a "$LOG"; exit 1; }
cd "$ROOT"
git pull --ff-only || echo "[publish] aviso: pull falló; sigo" | tee -a "$LOG"
cp "$POST" "$POST.bak-publish-20261122"
sed -i 's/^draft: true$/draft: false/' "$POST"
npm run build 2>&1 | tee -a "$LOG"
pm2 restart analisis-pub >/dev/null
bash /home/deploy/scripts/cf_purge.sh pruebapublica >> "$LOG" 2>&1 || echo "[publish] aviso: purge falló" | tee -a "$LOG"
git add "$POST" public/participacion-65-75-og.png public/participacion-votantes.png public/participacion-historica.png public/electores-por-diputado.png public/votos-primer-escanio.png
git commit -m "post: participacion y escaños 29N" || true
git push origin main || echo "[publish] aviso: push falló" | tee -a "$LOG"
CODE=$(curl -s -o /dev/null -w "%{http_code}" -A "Mozilla/5.0" "https://analisis.pruebapublica.com/posts/$SLUG/")
echo "[publish] https://analisis.pruebapublica.com/posts/$SLUG/ -> HTTP $CODE" | tee -a "$LOG"
if [ "$CODE" = "200" ]; then
  cd /home/deploy/social-poster
  /usr/bin/python3 blog_social.py --post "$SLUG" >> "$LOG" 2>&1 || echo "[publish] aviso: blog_social falló" | tee -a "$LOG"
  TMPC=$(mktemp)
  crontab -l 2>/dev/null | grep -v 'publish_participacion.sh' > "$TMPC" || true
  crontab "$TMPC"
  rm -f "$TMPC"
  echo "[publish] difusión social solicitada; X manual." | tee -a "$LOG"
else
  echo "[publish] NO se retira el cron: la página no devolvió 200" | tee -a "$LOG"
fi
