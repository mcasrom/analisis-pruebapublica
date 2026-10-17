---
title: "Lo que vio el radar esta semana: 52.037 eventos, 122 grupos en banda alta y cuatro sincronías entre cuentas"
description: "Semana 7→13 oct: 52.037 eventos, 1.705 grupos, 122 en banda alta y cuatro grupos con sincronía entre cuentas distintas (cero la semana anterior)."
pubDate: 2026-10-13
author: "M. Castillo"
assisted: "GenAI (consulta de la API pública y redacción asistida)"
tags: ["OSINT", "radar de coordinación", "observatorio", "elecciones", "análisis de datos", "transparencia", "FIMI"]
categoria: "análisis"
serie: "Lo que vio el radar"
serie_numero: 4
image: "/radar-semana-20261013-og.png"
abstract_en: "What my amplification radar saw this week: 52,037 events, 1,705 groups. 122 in the high band, three critical with benign explanations, and four groups with cross-account synchrony (zero the week before)."
resumen:
  - "52.037 eventos y 1.705 grupos; 122 en banda alta y 3 en crítica."
  - "Cuatro grupos con sincronía entre cuentas distintas (cero la semana anterior): señal a revisar, no veredicto."
  - "1.190 grupos (70 %) son feed de una sola fuente: la banda alta mide amplificación, no campaña."
faq:
  - q: "¿Qué es este resumen semanal?"
    a: "Una lectura honesta de lo que el Observatorio de señales de coordinación y amplificación ha registrado durante la semana: cuánto volumen ha habido, qué grupos han destacado y qué parte de esas señales tiene una explicación específica frente a las que son solo eco de prensa o feeds."
  - q: "¿Ha detectado campañas de desinformación o injerencia?"
    a: "No. Los cuatro grupos con sincronía entre cuentas distintas son señal que merece revisión, no coordinación confirmada ni atribución de autoría, financiación o intención. Una banda alta mide amplificación, no prueba de campaña."
  - q: "¿Puedo verificar estas cifras?"
    a: "Sí. Todas salen de la API pública read-only y son reproducibles; el método, los límites y las bandas están publicados. Los identificadores de grupo no son estables entre ciclos: para seguir un caso se usa el enlace /c/… (linaje)."
---

# Lo que vio el radar esta semana

Cada semana publico un resumen de lo que el **Observatorio de señales de coordinación y amplificación** ha registrado. No de lo que promete encontrar: de lo que hay dentro de sus datos. Esta semana la novedad es un cambio de signo: **cuatro grupos con sincronía entre cuentas distintas**, cuando la semana pasada no había ninguno.

Corte de datos: **13 de octubre de 2026**. Se puede reproducir contra la API pública, cuya dirección y permalinks figuran al final.

> **Serie Lo que vio el radar** · [n.º 1: 41.778 eventos y tres sincronías](/posts/lo-que-vio-el-radar-esta-semana/) · [n.º 2: lo que amplificó Ceuta](/posts/lo-que-amplifico-la-crisis-de-ceuta/) · [n.º 3: 51.914 eventos y ninguna sincronía](/posts/lo-que-vio-el-radar-semana-20261007/) · [Qué vigila el radar](/posts/fimi-radar-que-vigila/)

## La semana en cifras

Del **7 al 13 de octubre** el observatorio ha procesado **52.037 eventos** (la semana anterior, 51.914: prácticamente la misma). El reparto por fuente no cambia: **Bluesky + Google News ≈ 95 %** del volumen; RSS y Telegram aportan el resto. El corpus acumulado llega a **254.257 eventos** y el sistema mantiene **1.705 grupos** analizados:

| Banda | Grupos |
|---|---:|
| Crítica (80–100) | **3** |
| Alta (60–79) | 122 |
| Anómala (40–59) | 665 |
| Resto (0–39) | 915 |

![Distribución por banda · 1.705 grupos: 3 crítica, 122 alta, 665 anómala y 915 resto](/radar-bandas-20261013.svg)

*Gráfico propio. Barras proporcionales al número de grupos; el recuento no es comparable entre semanas.*

Los tres grupos en banda crítica y los 122 en banda alta son **señal de amplificación**, no veredictos: la mayoría admite una explicación benigna (eco de prensa, feed de una fuente).

## Qué pesa de verdad: feeds y eco

Antes de contar nada conviene decirlo: de los 1.705 grupos, **1.190 (el 70 %) admiten una explicación de «feed de una sola fuente»** —una cuenta o un dominio concentra casi todo— y **45 más encajan en sindicación de prensa**. Son grupos reales, pero no son señales de coordinación.

| Explicación principal | Grupos |
|---|---:|
| Feed de una sola fuente | **1.190** |
| **Sin resolver** | **159** |
| Sincronizado sin operador | 100 |
| Amplificación sostenida | 71 |
| Eco de prensa | 49 |
| Sindicación de prensa | 45 |
| Eco de una sola pieza | 41 |
| Automatización no maliciosa | 32 |
| Viralidad orgánica | 13 |
| **Sincronía entre cuentas distintas** | **4** |
| Movilización legítima | 1 |

La última fila es el titular de la semana: **cuatro** (la semana pasada, cero). Son grupos donde **varias cuentas distintas, ninguna dominante, publican el mismo contenido** — la señal que más merece revisión. No implican un operador: por eso hay también **159 «sin resolver»** que pasan a revisión humana.

## Lo más alto, explicado

Los clusters con mayor señal (score 0–100) fueron:

| Tema | Score | Cuentas |
|---|---:|---:|
| España — defensa y amenazas híbridas | 86 | 10 |
| Oriente Medio (Israel-Irán-Gaza) | 84 | 23 |
| Inteligencia artificial | 81 | 95 |
| Sahel | 78 / 76 | 25 / 22 |
| Elecciones (multi-proceso) | 76 | 88 |

El patrón se repite: los temas con más cuentas (inteligencia artificial, elecciones) muestran mucha **difusión amplia**; los de menos cuentas concentran **mayor anomalía**. Ninguno combina coordinación, infraestructura común y narrativa transfronteriza con la evidencia que exigiría hablar de operación de influencia.

## Qué contraste con verificadores

El observatorio cruza su señal con **Maldita y Newtral** (169 piezas registradas) y, cuando un grupo coincide con una verificación, lo marca como **posible bulo, no como veredicto**: es un contraste, no una confirmación de autoría. Se cuenta así, en crudo, para no convertir la coincidencia en acusación.

## Lo nuevo en el observatorio

Esta semana he añadido cuatro cosas pensadas para que el radar se lea mejor y se verifique con menos fricción:

1. **Informe visual por tema** (`/informes/visual/<tema>.html`): una página por tema con las señales, las hipótesis alternativas y los límites, lista para citar o guardar en PDF.
2. **Resumen semanal por email**: ahora puedes recibir esta misma lectura cada semana. Doble confirmación y baja en un clic (formulario en las páginas de casos e informes).
3. **API abierta y auditable**: `/api/v1` en JSON autodescriptivo, con el bloque `replay` para recomputar el score con la misma configuración. Es lo que hace reproducible el corte de arriba.
4. **Compartir un hallazgo**: cada grupo tiene un **enlace estable** (`/c/…`) que no cambia aunque el grupo se renumere cada ciclo, para seguir una señal en el tiempo.

## Límites

Cobertura parcial: **sin X, TikTok, Instagram, Facebook, YouTube, WhatsApp ni Telegram privado**. El grueso del corpus es Bluesky + Google News, así que el radar **no es un agregador neutro**: mide lo que puede ver, y lo dice. Una banda alta es un **punto de partida**, no una conclusión. La validación externa sigue siendo débil (la conocida y limitada).

## Cómo reproducirlo

- API pública: `https://fimi.viajeinteligencia.com/api/v1` (read-only, sin clave).
- Método y límites: [metodología](https://fimi.viajeinteligencia.com/metodo.html).
- Caso abierto: [Ceuta / Frontera Sur](https://fimi.viajeinteligencia.com/casos/ceuta/).

*Miguel Castillo. Proyecto independiente y open source. Señal, no atribución.*
