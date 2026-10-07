---
title: "Elecciones generales 2026: qué puede ver —y qué no— el Radar FIMI durante la campaña"
description: "Presento el tema «España — Elecciones Generales 2026» del Radar FIMI: qué observa, qué no puede afirmar y con qué reglas lo usaré durante la campaña."
pubDate: 2026-10-06
author: "M. Castillo"
assisted: "GenAI (consulta de la API pública y redacción asistida)"
tags: ["FIMI", "elecciones", "España", "29N", "desinformación", "OSINT", "radar de coordinación", "transparencia"]
categoria: "análisis"
image: "/fimi-elecciones-2026-og.png"
draft: false
serie: "España 29-N"
serie_numero: 1
abstract_en: "With Spain's general election called for 29 November 2026, my FIMI radar opens a dedicated topic: what it observes (repetition, sustained amplification, press echo), what it cannot claim (who is behind it, with what intent), and the rules I will follow. It also adds a new contrast with fact-checkers — contrast, not verdict."
faq:
  - q: "¿Qué es el nuevo tema del radar?"
    a: "Un tema específico que sigue la conversación pública sobre las elecciones generales españolas del 29 de noviembre de 2026: medios por RSS, comunicados institucionales y cuentas sociales abiertas. Agrupa los mensajes que se repiten y puntúa el comportamiento de cada grupo, no su contenido político."
  - q: "¿Ha detectado ya una campaña de desinformación electoral?"
    a: "No. A 6 de octubre de 2026 el tema tiene 55 grupos y ninguno en banda alta. El radar mide forma (repetición, amplificación, anomalía), no atribuye autoría y no confirma que algo sea falso: señal no es conclusión."
  - q: "¿Qué son los «posibles bulos contrastados»?"
    a: "Un cruce automático entre los grupos en banda alta o anómala y las piezas recientes de verificadores (Maldita y Newtral, últimos 14 días). Señala dónde el contenido amplificado toca un tema que un verificador acaba de desmentir, para que una persona lo revise. Es contraste, no veredicto: no atribuye actor ni confirma bulo."
---

> **Serie España 29-N · Parte I** · [II — Primera lectura: pico de convocatoria](/posts/espana-elecciones-29n-primera-lectura/)

Una campaña electoral es el momento en que más se habla de desinformación y, a la vez, aquel en que la palabra se convierte más fácilmente en arma. Cualquier mensaje incómodo puede llamarse «bulo»; cualquier coincidencia entre cuentas, «campaña orquestada».

Mi observatorio solo mide la forma en que circulan los mensajes, no su verdad ni su intención. Antes de una campaña en la que todos hablarán de manipulación, prefiero presentar el instrumento, sus límites y mis reglas, en vez de adelantar conclusiones.

Con las elecciones del **29 de noviembre** convocadas desde el **5 de octubre** y la campaña arrancando el **13 de noviembre**, el [Radar FIMI](https://fimi.viajeinteligencia.com) estrena un tema: **España — Elecciones Generales 2026**. Este texto no presenta hallazgos: presenta una lente.

## Qué es el nuevo tema

Recoge conversación pública y abierta sobre el proceso electoral: medios y agencias por RSS, comunicados institucionales y cuentas sociales sin autenticación. Funciona como el resto del radar: captura contenido, agrupa los mensajes que se repiten y puntúa el **comportamiento** de cada grupo, no su contenido político.

El observatorio maneja hoy **198.194 eventos** de **87 fuentes**, en **1.408 grupos**. El nuevo tema aporta **55 grupos** y, de momento, **ninguno en banda alta**. El backfill inicial sumó **1.118 eventos de 467 cuentas**. Son cifras de partida, no hallazgos. Nace del antiguo piloto sobre elecciones e interferencia, reorientado para que España no se mezcle con otros procesos.

## Qué puede detectar

El radar observa la forma, no la verdad. Detecta repetición entre cuentas en ventanas muy cortas, amplificación sostenida de un enlace durante días, anomalías (ritmos de publicación inusualmente regulares), cruces con otros temas (Frontera Sur, defensa, amenazas híbridas) y eco de prensa, que separa de las cuentas sociales. También puede detectar su ausencia, un resultado legítimo.

![RADAR FIMI · España · Elecciones generales 2026: «Una señal no es una acusación». El radar observa repetición entre cuentas, amplificación sostenida, anomalías de comportamiento y eco de prensa; no afirma quién está detrás, con qué intención, si hay partido o actor, ni el efecto sobre el voto. Hitos: 5-oct convocatoria, 13-nov inicio de campaña, 29-nov elecciones.](/fimi-elecciones-2026.svg)

Ceuta es la mejor advertencia. Allí el radar registró 13.442 eventos, pero de los 150 enlaces compartidos por dos o más cuentas, 113 eran de medios: midió, sobre todo, una noticia que se compartió mucho. En la validación ciega del 29 de septiembre, solo el **8,3 %** de los grupos en banda alta mostró coordinación real y **ninguno**, FIMI. Lo cuento en [«Lo que amplificó la crisis de Ceuta»](/posts/lo-que-amplifico-la-crisis-de-ceuta/): una puntuación alta no es una conclusión, es una invitación a mirar.

## Un contraste nuevo: posibles bulos

Este otoño he añadido una pieza que encaja con una campaña. El radar descarga las piezas recientes de dos verificadores —**Maldita** y **Newtral**, últimos 14 días— y las cruza con los grupos en banda alta o anómala: cuando comparten términos distintivos, los lista juntos. Hoy hay **160 contrastes**, **41 en el tema electoral**; 150 en banda anómala y 10 en banda alta. Se puede consultar en la tarjeta **«Posibles bulos contrastados»** de la portada, en el feed **RSS** (`/datos/bulos.xml`) y en **JSON** (`/datos/bulos.json`, CC BY 4.0), bajo el desplegable «Bulos ▾».

El nombre importa: es **contraste, no veredicto**. No dice que un grupo sea falso, ni confirma un bulo, ni atribuye autoría. Solo señala dónde el contenido amplificado toca un tema que un verificador acaba de desmentir, para que una persona lo mire. El cruce es por **solapamiento de términos**, no por probar que es la misma afirmación: puede haber coincidencias falsas, y el radar no analiza imágenes ni vídeos, así que un bulo que circule como imagen puede quedar fuera. Aun así, para quien sigue una campaña a diario es un atajo razonable: un punto de partida, nunca la respuesta.

## Qué no puede decir

No puede decir quién está detrás de un patrón, con qué intención actúa, si las cuentas son auténticas, si hay financiación común o si el efecto sobre el voto es real. Tampoco mide encuestas ni intención de voto.

Y ve parcialmente. La captura se apoya en fuentes abiertas —más del 90 % de los eventos recientes vienen de Bluesky y Google News—. No cubre del todo X, TikTok, Instagram, Facebook, YouTube ni WhatsApp, ni los espacios privados de Telegram, y no analiza imágenes, vídeos ni *deepfakes*. Una ausencia de señal puede significar que no hay coordinación observable, o que el fenómeno ocurre fuera del perímetro. La muestra está sesgada y no representa a todo el electorado.

## Reglas para una campaña

En periodo electoral, la credibilidad de un instrumento así depende menos de lo que detecta que de cómo se compromete a usar lo que detecta:

1. **Sin nombres.** No publicaré cuentas ni personas concretas.
2. **Sin atribución.** No atribuiré un patrón a partidos, candidatos ni actores extranjeros; la atribución será `UNKNOWN` salvo evidencia adicional y revisión humana.
3. **Mismo criterio para todos.** Describiré un patrón igual venga del espectro que venga; los umbrales son públicos antes de ver resultados.
4. **Datos abiertos.** Cada grupo permite descargar su evidencia en CSV o JSON.
5. **Correcciones visibles.** Si un grupo se reclasifica o un dato se corrige, lo indicaré.
6. **El «no» también se publica.** Si no hay señal, lo diré.

## Cómo leer una alerta

Ante un grupo en banda alta: comprobar eventos y fuentes, distinguir medios de cuentas sociales, mirar los componentes del score y no solo el total, revisar si es una sola pieza repetida y descargar la evidencia antes de concluir. El score sirve para encontrar; la evidencia, para investigar. Y una noticia que miles de cuentas comparten porque es noticia no es, por sí sola, un problema.

La metodología está en [FIMI Radar: qué vigila un radar de desinformación](/posts/fimi-radar-que-vigila/); un caso real, en [«Qué detecta hoy el observatorio»](/posts/que-detecta-hoy-el-observatorio-fimi/).

## Por qué ahora

Por tres razones: disponer de una **línea base** —sin saber cómo se comporta la conversación en semanas tranquilas, cualquier pico parece anómalo—; **fijar las reglas antes** de que existan resultados que las tienten; y que periodistas, verificadores y ciudadanos puedan consultar un instrumento abierto en lugar de fiarse de afirmaciones sin datos.

Hasta el 29 de noviembre publicaré resúmenes periódicos con los mismos apartados: qué se observó, qué no se puede afirmar y dónde está la evidencia. Si un patrón merece revisión humana, lo describiré sin nombres ni atribuciones y con enlace a los datos. Si no hay nada que contar, lo diré.

## La pregunta correcta

En campaña la primera pregunta suele ser «¿quién está detrás?». El radar no puede responderla. La que sí ayuda es otra: «¿qué comportamiento observamos y qué explicaciones alternativas pueden dar cuenta de él?».

Un proceso electoral sano necesita observación de su espacio informativo, pero también que esa observación no se convierta en un arma más de la campaña. Una señal puede ser el comienzo de una investigación. Nunca debería ser el final, y menos aún un argumento electoral.

## Para seguir leyendo

- [España 29-N (II): primera lectura con 2 días de captura](/posts/espana-elecciones-29n-primera-lectura/)
- [FIMI Radar: qué vigila un radar de desinformación (y cómo leerlo sin sobreinterpretar)](/posts/fimi-radar-que-vigila/)
- [España ante las amenazas híbridas: qué puede ver —y qué no— un radar FIMI](/posts/espana-amenazas-hibridas-radar-fimi/)
- [Lo que amplificó la crisis de Ceuta — y lo que el radar no puede decir](/posts/lo-que-amplifico-la-crisis-de-ceuta/)
- [Qué detecta hoy el Observatorio FIMI](/posts/que-detecta-hoy-el-observatorio-fimi/)

---

*Nota sobre el proceso de elaboración:* este texto describe la incorporación de un tema al Radar FIMI y se ha elaborado con asistencia de IA para la redacción y la estructura, bajo criterio y revisión editorial humanos. El radar mide **forma** (coordinación, amplificación, anomalía), no intención: una señal alta no es una campaña probada y la atribución de actor es `UNKNOWN` por defecto. Cifras de datos públicos del observatorio (corte 6-oct-2026, 07:16 UTC; versión `v0.2-181`).

*@pruebapublica · analisis.pruebapublica.com*
