---
title: "29-N, primera lectura: pico de convocatoria con 2 días de captura y 2 grupos en banda alta"
description: "29-N a 40 días: 72 grupos y 7.814 eventos, pico de 2.013 el día de la convocatoria y 2 en banda alta."
pubDate: 2026-10-07
author: "M. Castillo"
assisted: "GenAI (consulta de la API pública y redacción asistida)"
tags: ["FIMI", "elecciones", "España", "29N", "desinformación", "OSINT", "radar de coordinación", "transparencia"]
categoria: "análisis"
image: "/ee-20261007-og.png"
draft: false
serie: "España 29-N"
serie_numero: 2
abstract_en: "Spain's 29-N election, 40 days out: 7,814 events in 30 days, a 2,013-event spike on snap-election day (5-Oct), and 2 high-band groups with benign-leaning explanations."
faq:
  - q: "¿Ha detectado el radar una campaña de desinformación electoral?"
    a: "No. Hay 72 grupos y 2 en banda alta: uno sin resolver con pinta de eco oficial (29 eventos de 4 cuentas) y otro de amplificación sostenida. Ninguno permite afirmar coordinación, autoría ni campaña."
  - q: "¿Qué fue el pico del 5 de octubre?"
    a: "El día de la convocatoria se registraron 2.013 eventos, unas diez veces el volumen habitual (~200/día). Es cobertura de una noticia grande, no una señal de coordinación por sí sola."
  - q: "¿Qué puede y qué no puede decir el radar aquí?"
    a: "Puede describir forma (repetición, amplificación, eco) con evidencia descargable. No atribuye partidos, candidatos ni actores, no confirma bulos y no ve X, TikTok ni WhatsApp."
---

> **Serie España 29-N · Parte II** · [I — Reglas: qué puede ver y qué no](/posts/elecciones-generales-2026-radar-fimi/)

Ayer [presenté el instrumento y sus reglas](/posts/elecciones-generales-2026-radar-fimi/): sin nombres, sin atribución, mismo criterio para todos, datos abiertos y el «no» también se publica. Hoy toca lo comprometido entonces: **qué muestran los datos**, con las mismas reglas.

Corte: **7 de octubre de 2026**, a 40 días del 29-N. Todo reproducible contra la API pública (enlaces al final).

## Qué hay en el tema (y de dónde viene)

El tema agrupa **72 clusters** sobre **7.951 eventos etiquetados**. Pero la mitad de ese material (3.885 eventos) es **anterior al 5 de octubre**, día en que se creó el tema: viene del backfill inicial y del solapamiento con otros temas —3.984 eventos comparten etiqueta con el electoral general y 1.526 con frontera sur—. Es material válido para clusterizar (así funciona el multi-tema), pero **no** es captura propia. El tema se activó hace dos días, no hace 30: no hay «30 días» de nada propio.

La captura propia suma **4.066 eventos en dos días**:

| Día | Eventos | Origen |
|---|---|---|
| 5-oct | 2.013 | captura propia (convocatoria) |
| 6-oct | 1.731 | captura propia (resaca) |
| 7-oct | 322 | captura propia (día en curso) |
| antes del 5-oct | 3.885 | backfill + solape con otros temas |

Dos consecuencias honestas. Una: el pico del día 5 es real y es cobertura —diez veces el ritmo previo—. Dos: **la línea base de semanas tranquilas que prometí no existe todavía**: se está construyendo desde el 5-oct, y lo que hay antes es material compartido, no una foto propia de la calma. Lo dejo escrito para no tener que desdecirme en noviembre.

## Los 72 grupos

El tema agrupa **72 clusters** (55 hace dos días; el pico trae material nuevo): **2 en banda alta, 24 en anómala, 46 en vigilancia, 0 críticos**. Sigue en **piloto**.

| Explicación principal | Grupos |
|---|---:|
| Feed de una sola fuente | **49** |
| Eco de una sola pieza | 9 |
| Eco de prensa | 8 |
| Sincronizado sin operador | 3 |
| **Sin resolver** | **2** |
| Amplificación sostenida | 1 |

El 68 % son feeds de una sola fuente. Y hay un detalle que me gusta contar porque muestra los topes funcionando: varios grupos en anómala puntúan **59,0 exactos** — el techo de los *caps* anti-eco. Sin esos topes estarían en banda alta por repetir mucho una sola pieza o un solo dominio.

![Explicación principal por grupo del tema España-elecciones (n=72, 7-oct-2026): 49 feed de una fuente, resto ecos y 2 sin resolver](/ee-20261007-donut.png)

## Los dos en banda alta, sin adornos

- **`espana_elecciones_cluster_012`** (67,2): **29 eventos de 4 cuentas**, explicación **sin resolver** (plausibles: eco de pieza, amplificación sostenida), rol dominante **respuesta oficial**. Pinta a eco institucional. Pero «pinta a» no es «es»: queda anotado para revisión humana, sin nombres y sin atribución.
- **`espana_elecciones_cluster_004`** (60,4): **41 eventos de 9 cuentas**, **amplificación sostenida**, rol **posible narrativa**. Patrón lento de días, no ráfaga.

Ninguno de los dos permite afirmar coordinación, y mucho menos campaña o autor. Son, por este orden, una pregunta abierta y un patrón lento.

## El contraste con verificadores

El cruce con Maldita y Newtral suma **86 contrastes** en el tema (11 en banda alta). Contraste, no veredicto: señala dónde lo amplificado toca lo verificado para que una persona lo mire. Con la campaña arrancando el 13 de noviembre, este será el panel a vigilar.

## Lo que esto NO es (reglas en vigor)

- **Sin nombres**: no se publica ninguna cuenta ni persona.
- **Sin atribución**: todo es `UNKNOWN` salvo evidencia adicional y revisión humana.
- **El pico no es un hallazgo**: 2.013 eventos el día de la convocatoria es cobertura, no coordinación.
- **Campo de visión parcial**: el 95 % del corpus es Bluesky + Google News; fuera quedan X, TikTok, Instagram, WhatsApp y los privados de Telegram; ni imágenes ni vídeos. La muestra no representa al electorado.
- **Sin encuestas**: esto no mide intención de voto ni efecto sobre el voto.

## Cómo verificarlo

- Tema en vivo: [fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com/) (pestaña del tema)
- Serie diaria: `https://fimi.viajeinteligencia.com/api/v1/tema/espana_elecciones/serie?dias=30`
- Clusters: `/api/v1/tema/espana_elecciones` · Contrastes: `/datos/bulos.json`
- Reglas del juego: [qué puede ver —y qué no— el radar en campaña](/posts/elecciones-generales-2026-radar-fimi/)

Hasta el 29 de noviembre, el compromiso es el mismo: qué se observó, qué no se puede afirmar y dónde está la evidencia. Si no hay nada que contar, lo diré.

---

*Nota de elaboración: datos extraídos de la API pública del Observatorio el 7-oct-2026 (snapshot 07:12 UTC) más el registro interno de eventos para la serie diaria. Este texto describe patrones observables, no atribuye autoría ni intención.*

*@pruebapublica*
