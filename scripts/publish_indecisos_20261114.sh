#!/usr/bin/env bash
set -euo pipefail
cd /home/deploy/analisis-pruebapublica
cp borradores/indecisos-29n.md src/content/posts/indecisos-29n.md
sed -i 's/^draft: true$/draft: false/' src/content/posts/indecisos-29n.md
if ! npm run build; then
  sed -i 's/^draft: false$/draft: true/' src/content/posts/indecisos-29n.md
  exit 1
fi
pm2 restart analisis-pub
/home/deploy/scripts/cf_purge.sh pruebapublica
sleep 2
curl -fsS -o /dev/null "https://analisis.pruebapublica.com/posts/indecisos-29n/"
cd /home/deploy/social-poster
/usr/bin/python3 blog_social.py --post indecisos-29n
