#!/usr/bin/env bash
set -euo pipefail
BLOG=/home/deploy/analisis-pruebapublica
SOCIAL=/home/deploy/social-poster
[ "$(date -u +%F)" = "2026-11-22" ] || exit 0
[ ! -f "$BLOG/.29n_participar.done" ] || exit 0
cd "$BLOG"
sed -i '0,/^draft: true$/s//draft: false/' src/content/posts/participar-no-es-representar.md
npm run build
pm2 restart analisis-pub >/dev/null
URL='https://analisis.pruebapublica.com/posts/participar-no-es-representar/'
IMG='https://analisis.pruebapublica.com/participar-no-es-representar-og.png'
ALT='Mapa provincial de participación en 2023 y título del análisis sobre territorio y escaños.'
TXTM='Ya disponible: participación, territorio y escaños. El análisis completo, 22-N. He publicado un análisis sin pronóstico sobre cómo las circunscripciones y la distribución del voto transforman votos en escaños, con datos del Observatorio 29N.

Post: https://analisis.pruebapublica.com/posts/participar-no-es-representar/
Datos: https://elecciones29n.pruebapublica.com/'
TXTB='Ya disponible: participación, territorio y escaños. El análisis completo, 22-N. Un análisis sin pronóstico sobre cómo las circunscripciones transforman votos en escaños. Datos del Observatorio 29N.

https://analisis.pruebapublica.com/posts/participar-no-es-representar/'
cd "$SOCIAL"
python3 publish_mastodon.py "$TXTM" "$IMG" --alt "$ALT" >> social-29n-participar.log 2>&1
python3 publish_bluesky.py -t "$TXTB" -s "$IMG" --alt "$ALT" >> social-29n-participar.log 2>&1
python3 /home/deploy/social-poster/publish_29n_participar_telegram.py >> social-29n-participar.log 2>&1
touch "$BLOG/.29n_participar.done"
