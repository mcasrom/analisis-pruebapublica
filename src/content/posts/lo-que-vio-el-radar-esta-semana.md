---
title: "Lo que vio el radar esta semana: 41.778 eventos, 98 grupos en banda alta y tres grupos con sincronía entre cuentas"
description: "Observatorio de señales: 41.778 eventos y 929 grupos esta semana. 98 en banda alta, cero críticos y tres grupos con sincronía entre cuentas (una destaca)."
abstract_en: "What my amplification radar saw this week: 41,778 events, 929 groups. 98 in the high band, zero critical, and three groups with cross-account synchrony."
pubDate: 2026-09-27
author: "M. Castillo"
assisted: "GenAI (consulta de la API pública y tratamiento de datos)"
tags: ["OSINT", "radar de coordinación", "observatorio", "Ceuta", "elecciones", "análisis de datos", "transparencia", "FIMI"]
categoria: "análisis"
serie: "Lo que vio el radar"
serie_numero: 1
image: "/radar-semana-20260927-og.png"
faq:
  - q: "¿Qué es este resumen semanal?"
    a: "Una lectura honesta de lo que el Observatorio de señales de coordinación ha registrado durante la semana: cuánto volumen ha habido, qué grupos han destacado y, sobre todo, cuáles de esas señales tienen una explicación específica y cuáles son solo ecos de prensa o feeds."
  - q: "¿Ha detectado campañas de desinformación o injerencia?"
    a: "No. Esta semana los grupos analizados son en su gran mayoría feeds de una sola fuente y eco de prensa. No hay ningún grupo en banda crítica ni ninguna atribución de autoría, financiación o intención. Señal no es atribución."
  - q: "¿Qué significa «sincronía entre cuentas distintas»?"
    a: "Que varias cuentas diferentes publican el mismo contenido en una ventana corta de tiempo y ninguna domina el grupo. Es el patrón más parecido a una coordinación observable, pero sigue siendo una medida de forma: no dice quién está detrás ni por qué."
---

# Lo que vio el radar esta semana

Cada semana publicamos un resumen de lo que el **Observatorio de señales de coordinación y amplificación** ha registrado. No de lo que promete encontrar: de lo que hay dentro de sus datos. Es un ejercicio incómodo a propósito, porque la cifra que más llamaría la atención —«cuántos grupos sospechosos»— es precisamente la que casi nunca tiene una respuesta limpia. Esta semana la tiene, y es pequeña.

Corte de datos: **27 de septiembre de 2026, 06:51 UTC**. Se puede reproducir contra la API pública, cuya dirección y permalinks figuran al final.

## La semana en cifras

Del **21 al 27 de septiembre** el observatorio ha procesado **41.778 eventos** procedentes de **77 fuentes** (RSS, Bluesky, Telegram, Reddit y Mastodon). Sobre ese volumen, el sistema mantiene **929 grupos** analizados.

| Banda | Grupos |
|---|---:|
| Crítica (80–100) | **0** |
| Alta (60–79) | 98 |
| Anómala (40–59) | 320 |
| Resto (0–39) | 511 |

El corpus acumulado es de **131.005 eventos**. La mayor parte del tráfico temático de la semana se reparte entre **elecciones** (11.206 eventos), **Oriente Medio** (10.361) e **inteligencia artificial** (8.281); después vienen energía (4.833), frontera sur/Ceuta (3.875), Sahel (2.594) y defensa (1.708).

## Qué pesa de verdad: feeds y eco

Antes de contar nada conviene decirlo: de los 929 grupos, **636 (el 68 %) admiten una explicación de «feed de una sola fuente»** —una cuenta o un dominio concentra casi todo el contenido—, y **156 más encajan en «eco de prensa»**. Son grupos reales, pero no son señales de coordinación: son agregadores, cuentas de medios o republicaciones.

Esa es la razón por la que el titular no es «cuántos grupos hay», sino «cuántos no se explican por sí solos».

## La señal específica

La explicación que interesa es **«sincronía entre cuentas distintas»**: varias cuentas diferentes publican el mismo contenido en una ventana corta, y ninguna domina el grupo. Esta semana `cross_account_synchrony` aparece **respaldada en tres grupos**, pero en dos de ellos compite con media docena de explicaciones benignas (eco de prensa, eco de una pieza, automatización no maliciosa…), así que no los presentamos como señales. El recuento cambia entre ciclos porque los grupos se recalculan cada 6 h y el contenido envejece: el 26 de septiembre era una sola sincronía; hoy está respaldada en tres, y solo una destaca.

- **`elecciones_cluster_011`** (banda alta, 61,9). **Nueve cuentas distintas** publicaron, en una ventana de **0,2 horas (unos 12 minutos)**, el mismo texto sobre la orden del INE mexicano a Alejandro Moreno y al PRI. La cuenta dominante aportaba solo el **11 %** del grupo y la similitud de contenido era del **100 %**. No es un feed ni una agencia. Aun así, la **automatización no maliciosa también figura como explicación respaldada**: es un patrón **compatible con coordinación**, no una coordinación demostrada. [Ver el grupo en el observatorio](https://fimi.viajeinteligencia.com/c/elecciones_cluster_009@1790124260).
- Con evidencia más débil (solo plausible) quedan `elecciones_cluster_023` (63,5), `elecciones_cluster_017` (54,5) y `frontera_sur_cluster_014` (53,6); en los tres, la explicación principal es benigna o queda sin resolver, así que no se cuentan como señal.

Junto a esto, **34 grupos** muestran **amplificación sostenida** —el mismo contenido reeditado a lo largo de más de 72 horas—, repartidos sobre todo por Oriente Medio (15 grupos). El caso más alto es `oriente_medio_cluster_008` (72,2), sobre la retórica de Khamenei. Es amplificación, pero es el patrón lento y difuso, no la ráfaga.

## Ceuta, la historia que dominó

La trama que más ha movido a los medios esta semana ha sido la **crisis de Ceuta** y la entrada de inmigrantes. El observatorio la registra en `frontera_sur`: **1.084 publicaciones** que enlazan a dominios de prensa (el 100 % de los enlaces) desde un puñado de cuentas de Bluesky. La clasifica como **eco de prensa con amplificación sostenida**, no como coordinación de contenido original entre cuentas distintas. [Ver el grupo en el observatorio](https://fimi.viajeinteligencia.com/c/frontera_sur_cluster_011@1790016011).

Esa distinción importa: un tema enorme en portada **no** es automáticamente una señal de coordinación, y el sistema no lo trata como tal.

## Lo que esto NO es

- **No hay ningún grupo en banda crítica** (0 de 929). El máximo de la semana es 79,0.
- **No hay atribución.** El observatorio describe forma —quién mueve qué, a la vez, con qué enlaces—; no identifica autoría, financiación ni intención.
- **No hay campaña confirmada.** Incluso la mejor señal de la semana (nueve cuentas, doce minutos, mismo texto) es un patrón compatible con coordinación, no una FIMI demostrada. [El glosario del observatorio](https://fimi.viajeinteligencia.com/glosario.html) explica por qué la calificación «híbrida» o «campaña» exige evidencia que las métricas no dan.
- **La mayoría del volumen no es señal.** Feeds, eco de prensa y coberturas legítimas explican la mayor parte de los 929 grupos.

## Cómo verificarlo

Todo lo anterior sale de datos públicos. Puedes reproducirlo:

- Estado completo: [fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com/)
- Documentación de la API: [api.html](https://fimi.viajeinteligencia.com/api.html)
- Permalink de un grupo: `https://fimi.viajeinteligencia.com/c/<lineage_id>` (los permalinks son estables aunque los números de grupo no lo sean entre ciclos)

Este resumen continúa la serie sobre el observatorio: [qué vigila el radar](https://analisis.pruebapublica.com/posts/fimi-radar-que-vigila/) y [qué detectaba a 26 de septiembre](https://analisis.pruebapublica.com/posts/que-detecta-hoy-el-observatorio-fimi/).

---

*Nota de elaboración: datos extraídos del microservicio del Observatorio el 27-sep-2026 a las 06:51 UTC y agregados con el registro interno de eventos. Las cifras semanales corresponden a los eventos con fecha dentro del 21–27 de septiembre; las de bandas y explicaciones, al snapshot del corte. Este texto describe patrones observables, no atribuye autoría ni intención.*

*@pruebapublica*
