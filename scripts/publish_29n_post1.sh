#!/usr/bin/env bash
# Publica el post 1 de la serie 29N (5-nov-2026).
# Uso: ./scripts/publish_29n_post1.sh [--force]
set -euo pipefail
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
git pull --ff-only
sed 's/^draft: true$/draft: false/' "$DRAFT" > "$DEST"
npm run build
pm2 restart analisis-pub >/dev/null
git add "$DEST"
git commit -m "post: el poder de medir (serie 29N, 1/2)" || true
git push origin main || echo "[publish] aviso: push falló; hazlo a mano"

sleep 2
CODE=$(curl -s -o /dev/null -w "%{http_code}" -A "Mozilla/5.0" "https://analisis.pruebapublica.com/posts/$SLUG/")
echo "[publish] https://analisis.pruebapublica.com/posts/$SLUG/ -> HTTP $CODE"
echo "[publish] purga CF desde el portátil: bash ~/Desktop/demo/cf_purge.sh pruebapublica"
echo "[publish] difusión: blog_social.py la detecta en <=30 min; X manual."
