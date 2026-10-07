---
title: "Lo que vio el radar esta semana: 51.914 eventos, 81 grupos en banda alta y ninguna sincronía entre cuentas"
description: "Semana 30-sep → 7-oct: 51.914 eventos, 1.451 grupos, 81 en banda alta y cero sincronías entre cuentas distintas."
pubDate: 2026-10-07
author: "M. Castillo"
assisted: "GenAI (consulta de la API pública y redacción asistida)"
tags: ["OSINT", "radar de coordinación", "observatorio", "elecciones", "análisis de datos", "transparencia", "FIMI"]
categoria: "análisis"
serie: "Lo que vio el radar"
serie_numero: 3
image: "/radar-semana-20261007-og.png"
abstract_en: "What my amplification radar saw this week: 51,914 events, 1,451 groups. 81 in the high band, one critical with a benign explanation, and zero cross-account synchronies."
faq:
  - q: "¿Qué es este resumen semanal?"
    a: "Una lectura honesta de lo que el Observatorio de señales de coordinación ha registrado durante la semana: cuánto volumen ha habido, qué grupos han destacado y, sobre todo, cuáles de esas señales tienen una explicación específica y cuáles son solo ecos de prensa o feeds."
  - q: "¿Ha detectado campañas de desinformación o injerencia?"
    a: "No. Esta semana no hay ningún grupo con sincronía entre cuentas respaldada, el único grupo en banda crítica tiene explicación benigna (amplificación sostenida de reporte de incidente) y no hay atribución de autoría, financiación o intención. Señal no es atribución."
  - q: "¿Qué cambió esta semana en el observatorio?"
    a: "El pipeline trabaja con ventana de 60 días (las señales viejas caducan) y el contraste con verificadores suma 274 cruces. Ambos cambios están documentados en el método."
---

# Lo que vio el radar esta semana

Cada semana publicamos un resumen de lo que el **Observatorio de señales de coordinación y amplificación** ha registrado. No de lo que promete encontrar: de lo que hay dentro de sus datos. Esta semana la noticia es una ausencia: **ninguna señal con forma de coordinación entre cuentas distintas**. Y eso, dicho por un radar, también es información.

Corte de datos: **7 de octubre de 2026**. Se puede reproducir contra la API pública, cuya dirección y permalinks figuran al final.

> **Serie Lo que vio el radar** · [n.º 1: 41.778 eventos y tres sincronías](/posts/lo-que-vio-el-radar-esta-semana/) · [n.º 2: lo que amplificó Ceuta](/posts/lo-que-amplifico-la-crisis-de-ceuta/) · [Qué vigila el radar](/posts/fimi-radar-que-vigila/)

## La semana en cifras

Del **30 de septiembre al 7 de octubre** el observatorio ha procesado **51.914 eventos** (semana más movida que la anterior: 41.778). El reparto por fuente no cambia: **Bluesky (75,5 %) + Google News (19,5 %) = 95 %** del volumen; el resto (RSS, Telegram) aporta el 5 %. El corpus acumulado roza ya los **207.000 eventos**. Sobre ese volumen, el sistema mantiene **1.451 grupos** analizados:

| Banda | Grupos |
|---|---:|
| Crítica (80–100) | **1** |
| Alta (60–79) | 81 |
| Anómala (40–59) | 574 |
| Resto (0–39) | 795 |

## Qué pesa de verdad: feeds y eco

Antes de contar nada conviene decirlo: de los 1.451 grupos, **1.023 (el 70 %) admiten una explicación de «feed de una sola fuente»** —una cuenta o un dominio concentra casi todo el contenido— y **138 más encajan en «eco de una sola pieza»**. Son grupos reales, pero no son señales de coordinación.

| Explicación principal | Grupos |
|---|---:|
| Feed de una sola fuente | **1.023** |
| Eco de una sola pieza | 138 |
| Sincronizado sin operador | 71 |
| Amplificación sostenida | 56 |
| **Sin resolver** | **55** |
| Eco de prensa | 51 |
| Sindicación de prensa | 28 |
| Automatización no maliciosa | 28 |
| **Sincronía entre cuentas distintas** | **0** |

La última fila es el titular de la semana: **cero**. Hace dos semanas era una sincronía; la pasada, tres (y solo una destacaba). Esta semana, ninguna explicación de sincronía entre cuentas queda respaldada en todo el sistema. Entre medias quedan **55 «sin resolver»**: grupos que ninguna causa benigna cubre y que pasan a revisión humana.

## Lo más alto, explicado

El único grupo en banda crítica es `oriente_medio_cluster_020` (**81,3**). Y su propia ficha lo desactiva como alarma: explicación principal **amplificación sostenida** (con automatización no maliciosa respaldada) y rol narrativo dominante **reporte de incidente** (98 de sus clasificaciones), con 45 de respuesta oficial. Es el patrón lento y difuso de una noticia grande que se comparte durante días, no una ráfaga. La crítica, aquí, mide tamaño del eco, no malicia.

La señal que sí merece una mirada humana está en el tema electoral español: `espana_elecciones_cluster_012` (**67,2**). Son **29 eventos de 4 cuentas** y su explicación queda **sin resolver** (con eco de pieza y amplificación sostenida como plausibles). Su rol dominante es **respuesta oficial** (6) frente a narrativa potencial (4): pinta a eco institucional, no a operación. Pero «pinta a» no es «es»: queda anotado para revisión, sin nombres y sin atribución. Es, en todo el sistema, lo más parecido a una pregunta abierta.

## El contraste con verificadores crece

El cruce automático con Maldita y Newtral suma ya **274 contrastes** (eran 160 hace una semana): 130 en el tema electoral general, **86 en el español**, 29 en frontera sur. De ellos, 37 corresponden a grupos en banda alta y **uno** en banda crítica —el mismo `oriente_medio_cluster_020` del apartado anterior—. Recordatorio que no sobra: es **contraste, no veredicto**. Señala dónde lo amplificado toca lo verificado para que una persona lo mire.

## Dos cambios de esta semana

Primero, el pipeline trabaja desde ayer con **ventana de 60 días**: las señales viejas caducan y dejan de puntuar (medido neutro en los 9 temas antes de aplicarlo). Segundo, nada en este resumen pide un acto de fe nuevo: todo sale de datos públicos y reproducibles.

## Lo que esto NO es

- **No hay sincronía entre cuentas esta semana** (0 de 1.451). El casillero de coordinación observable está vacío.
- **No hay atribución.** El observatorio describe forma; no identifica autoría, financiación ni intención.
- **No hay campaña confirmada.** Ni siquiera los 55 «sin resolver» son operaciones: son candidatos a revisión.
- **La mayoría del volumen no es señal.** Feeds, ecos y coberturas legítimas explican casi todo.

## Cómo verificarlo

- Estado completo: [fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com/)
- Documentación de la API: [api.html](https://fimi.viajeinteligencia.com/api.html)
- Serie diaria por tema: `https://fimi.viajeinteligencia.com/api/v1/tema/<slug>/serie?dias=7`
- Contrastes con verificadores: [datos/bulos.json](https://fimi.viajeinteligencia.com/datos/bulos.json)

Este resumen continúa la serie: [n.º 1 (41.778 eventos, tres sincronías)](https://analisis.pruebapublica.com/posts/lo-que-vio-el-radar-esta-semana/) y [n.º 2 (Ceuta)](https://analisis.pruebapublica.com/posts/lo-que-amplifico-la-crisis-de-ceuta/).

---

*Nota de elaboración: datos extraídos del microservicio del Observatorio el 7-oct-2026 a primera hora UTC (API pública + registro interno de eventos para el volumen semanal). Las cifras de bandas y explicaciones corresponden al snapshot del corte. Este texto describe patrones observables, no atribuye autoría ni intención.*

*@pruebapublica*
