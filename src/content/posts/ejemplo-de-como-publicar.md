---
title: "Ejemplo de cómo publicar"
description: "Así se publica un post: crea un markdown en borradores/ y ejecuta scripts/publish.sh."
pubDate: 2026-09-02
tags: ["guía"]
categoria: "análisis"
image: "/og-preview.png"
---

Este es un post de ejemplo para probar el flujo de publicación.

1. Escribe tu artículo en markdown en `borradores/`.
2. Ejecuta `scripts/publish.sh mi-post.md`.
3. El script lo mueve a `src/content/posts/`, hace build y reinicia PM2.

## Resultado

El post queda en `https://analisis.pruebapublica.com/posts/ejemplo-de-como-publicar/`.
