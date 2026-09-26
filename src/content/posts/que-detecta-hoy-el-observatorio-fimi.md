---
title: "Qué detecta hoy el Observatorio FIMI: 907 grupos analizados y una sola sincronía entre cuentas"
description: "Radiografía del Observatorio FIMI a 26-sep-2026: 907 grupos, 90 en banda alta, 0 críticos y una sola señal de sincronía entre cuentas distintas."
pubDate: 2026-09-26
author: "M. Castillo"
assisted: "GenAI (consulta de API y tratamiento de datos)"
tags: ["OSINT", "desinformación", "radar de coordinación", "midterms", "Brasil", "análisis de datos", "transparencia", "FIMI"]
categoria: "análisis"
image: "/observatorio-hoy-og.png"
faq:
  - q: "¿Qué es el Observatorio FIMI?"
    a: "Un observatorio de señales de coordinación y amplificación en el espacio informativo. FIMI (manipulación de la información e injerencia extranjeras) es el ámbito que observa, no una promesa de detección: mide patrones de comportamiento, no autoría ni intención."
  - q: "¿Ha detectado campañas de desinformación o injerencia?"
    a: "No. A 26 de septiembre de 2026 hay 907 grupos analizados, 90 en banda alta y cero en banda crítica; solo un grupo queda clasificado como sincronía entre cuentas distintas. La mayoría son feeds, ecos de prensa y cobertura."
  - q: "¿Qué mide y qué no mide el observatorio?"
    a: "Mide forma: quién mueve el mismo contenido, a la vez, y con qué enlaces. No identifica autoría, financiación ni intención, ni confirma que algo sea falso. Señal no es atribución."
draft: false
---

# Qué detecta hoy el Observatorio FIMI

Hay una forma de valorar una herramienta de análisis que casi nunca se usa: preguntarle **qué ha encontrado de verdad**. No qué promete, ni qué metodología dice tener, sino qué hay dentro de sus datos hoy. Este artículo hace exactamente eso con el **Observatorio FIMI** —un observatorio de señales de coordinación y amplificación—: lee su estado actual a través del propio microservicio que publica los datos y resume qué contiene.

Fecha del corte: **26 de septiembre de 2026, 17:14 UTC**. Versión del servicio: `v0.2-71-g4a17786`. Todos los datos citados se pueden reproducir contra la API pública, cuya dirección figura al final.

> **Serie Observatorio FIMI** · [Qué vigila el radar FIMI](/posts/fimi-radar-que-vigila/) · [España ante las amenazas híbridas: qué puede ver y qué no](/posts/espana-amenazas-hibridas-radar-fimi/) · [Frontera Sur: lo que el radar ve (y lo que no)](/posts/frontera-sur-2026/) · [Ceuta, FIMI y la frontera informativa](/posts/ceuta-fimi-y-la-frontera-informativa/)

## El tamaño del corpus

En este momento el sistema ha recogido **127.023 eventos** procedentes de **77 fuentes** —medios vía RSS, agregadores y cuentas de redes sociales—. Esos eventos se organizan en **9 temas activos**:

| Tema | Grupos |
|---|---|
| Oriente Medio | 215 |
| Elecciones | 177 |
| Inteligencia artificial | 175 |
| Energía | 90 |
| Frontera Sur (España-Marruecos) | 78 |
| Sahel | 74 |
| EEUU (política) | 52 |
| Defensa España | 36 |
| España — amenazas híbridas | 10 |

En total, **907 grupos** de contenido analizados. Dos de esos temas —Elecciones y Defensa España— están marcados como **piloto**, es decir, en ventana de calibración, no en explotación plena. El resto está en producción.

## El reparto por bandas

Cada grupo recibe una puntuación y una banda. El reparto global es el siguiente:

| Banda | Grupos |
|---|---|
| HIGH (máxima atención) | **90** |
| ANOMALOUS | 318 |
| WATCH (vigilancia) | 504 |
| CRITICAL | **0** |

![Reparto por bandas: 90 HIGH, 318 ANOMALOUS, 504 WATCH, 0 CRITICAL](/observatorio-hoy-bandas.png)

Hay un dato que conviene mirar de frente: **cero grupos en banda crítica**. Y de los grupos de los temas activos, solo **90 llegan a banda alta**. La lectura fácil sería “el sistema encuentra poco”. La lectura correcta es otra: el sistema **puntúa por forma**, y la mayor parte de la conversación digital tiene la forma de un eco, no la de una operación.

## Qué explican esos grupos

La parte más informativa del servicio son las “explicaciones alternativas”: para cada grupo, el sistema intenta descartar las causas benignas antes de dejar una señal en pie. El resultado global es contundente:

| Explicación principal | Grupos |
|---|---|
| Feed de una sola fuente | **626** |
| Eco de una sola pieza | 91 |
| Sincronizado sin operador | 54 |
| **Sin resolver** | **47** |
| Eco de prensa | 37 |
| Amplificación sostenida | 22 |
| Sindicación de prensa | 22 |
| Automatización no maliciosa | 12 |
| **Sincronía entre cuentas distintas** | **1** |

![Explicación principal de cada grupo: 626 feed de una fuente, 47 sin resolver y solo 1 sincronía entre cuentas](/observatorio-hoy-explicaciones.png)

Dos cifras resumen el estado del observatorio. La primera: **626 grupos** (casi el 70 %) son un único emisor o dominio difundiendo su propio contenido. La segunda: **solo 1 grupo** en todo el sistema queda clasificado como *sincronía entre cuentas distintas* —el patrón que de verdad interesa, cuando varias cuentas sin relación dominante mueven lo mismo a la vez—. Entre medias quedan **47 “sin resolver”**: grupos que ninguna explicación benigna cubre y que, por eso, pasan a revisión humana.

Ese es el hallazgo central del corte: **el observatorio encuentra, sobre todo, difusión y eco; rara vez coordinación, y nunca, en este estado, una campaña confirmada.**

## El caso electoral, en detalle

El tema electoral es el segundo por volumen y el más ilustrativo. Sus **177 grupos** se dividen en **54 que contienen léxico de injerencia** (interferencia, desinformación, propaganda) y **123 de cobertura normal**. De los 54:

- **13 están en banda HIGH**, 24 en ANOMALOUS y 16 en WATCH.
- La explicación principal repite el patrón general: **33 son feed de una sola fuente**.
- **5 quedan “sin resolver”**, y al examinarlos resultan ser cobertura de hechos reales, no operaciones: la sentencia sobre las papeletas por correo en EEUU, las leyes de Newsom “contra la interferencia de Trump”, el entrenamiento de voluntarios para vigilar colegios, un denunciante en Missouri, un observador electoral condenado en Azerbaiyán.

El único grupo que merece una mirada humana es **`elecciones_cluster_022`**: cinco cuentas distintas compartieron en **60 horas** un mismo “consenso informativo” sobre el auge de la AfD y las leyes electorales de California, y su explicación de sincronía entre cuentas es *plausible* —no descartada—. Es, en todo el tema, la señal más parecida a coordinación real. Sigue sin permitir afirmar autoría.

En el resto, el patrón se repite país por país. En **Brasil**, la “injerencia” que circula es eco de medios (Opera Mundi, Poder360, Actualidad RT) y el debate sobre métodos importados como el “Cerimedo”. En **Estados Unidos**, lo que se mueve es sobre todo **conflicto político interno** —papeletas, tribunales, Newsom, Alito—, no una operación extranjera. Y un grupo serbio recircula el titular de que “el servicio sueco advierte de bots de Putin en Alemania y Francia”: la conversación sobre la injerencia, amplificada.

## Interés no es lo mismo que coordinación

Para evitar otra confusión frecuente, conviene separar dos medidas. El sistema puede medir, además de la coordinación, el **interés** que despierta una conversación a través del engagement. Una consulta a la API de Bluesky (los posts más apoyados por proceso) da este orden de magnitud:

| Proceso | «Me gusta» (100 posts top) |
|---|---|
| EEUU (midterms) | 573.645 |
| Alemania (AfD) | 95.386 |
| Brasil | 41.043 |
| Suecia | 2.315 |
| Serbia, Letonia, Bosnia, Rusia, Bulgaria | ≈0 |

![Interés ciudadano en Bluesky por proceso: EEUU 573.645, Alemania 95.386, Brasil 41.043](/observatorio-hoy-interes.png)

El post más apoyado de los *midterms* de EEUU, con más de 45.000 “me gusta”, es una **llamada a votar**. Es decir: hay procesos con **enorme audiencia ciudadana** (EEUU, Alemania, Brasil) y otros con casi ninguna en esta red. Pero ese interés **no dice nada** sobre coordinación ni sobre veracidad. Coordinación y audiencia son dos ejes distintos, y el observatorio los mantiene separados.

## Qué no detecta

Es tan importante como lo anterior. El sistema **no identifica autoría, financiación ni intención**. No dice “esta campaña es rusa” ni “este contenido es falso”. Mide estructura: quién mueve lo mismo, a la vez, con qué enlaces. Cuando dice “sin resolver”, significa que ninguna causa benigna conocida lo explica —no que sea una operación—. Y cuando marca HIGH, significa “esto merece una mirada”, no “esto es desinformación”.

Por eso su propio microservicio repite en cada respuesta: *“Datos públicos de un radar de coordinación. Señal, no atribución.”*

## Cómo comprobarlo

Todo lo expuesto es reproducible. Los endpoints públicos son:

```
GET https://fimi.viajeinteligencia.com/api/v1/temas
GET https://fimi.viajeinteligencia.com/api/v1/tema/elecciones
GET https://fimi.viajeinteligencia.com/api/v1/cluster/<label>
```

El primero da el resumen por tema (grupos y alertas); el segundo, los 177 grupos electorales con su banda, tipo y explicaciones; el tercero, la evidencia de un grupo concreto. Cualquiera puede rehacer las cifras de este artículo desde su navegador.

## La conclusión del corte

A 26 de septiembre de 2026, el Observatorio FIMI tiene 907 grupos, 90 en banda alta, cero críticos y **una sola señal de sincronía entre cuentas**. Encuentra, sobre todo, feeds, ecos y cobertura. Eso no es un fracaso: es lo que un instrumento honesto **debe** reportar si la realidad que mira es, en su mayoría, ruido de difusión y no coordinación. Lo que no se puede hacer es contar esa realidad al revés —como una marea de campañas— porque los datos no lo sostienen.

Un observatorio útil no es el que confirma tus sospechas. Es el que, mirando 127.000 eventos, sabe decirte que solo uno —uno— tiene hoy la forma de una coordinación entre cuentas distintas.

> **Nota de elaboración**: cifras obtenidas del microservicio público del Observatorio FIMI (`/api/v1/temas`, `/api/v1/tema/elecciones`) más una consulta de engagement a la API de Bluesky, todas del 26 de septiembre de 2026 (snapshot 17:14 UTC). Redacción asistida por IA con tratamiento de datos. Sin estimaciones ni fuentes externas.

**M. Castillo** · [@pruebapublica](https://mastodon.social/@PruebaPublica)
