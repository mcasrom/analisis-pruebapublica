---
title: "Media de sondeos del 29N: qué mide el observatorio y qué no"
description: "Media de sondeos del 29N: qué mide el observatorio, qué no y por qué la incertidumbre va en el dato."
pubDate: 2026-10-18
author: "M. Castillo"
assisted: "GenAI (estructura y redacción); verificación personal de fuentes y cifras"
tags: ["elecciones 29N", "sondeos", "media de sondeos", "observatorio", "datos abiertos", "metodología"]
categoria: "análisis"
image: "/observatorio-29n-og.png"
draft: false
abstract_en: "A poll aggregator for Spain's 29 November 2026 general election that separates polling averages from census, turnout and seat allocation. It shows the range, the number of polls and the health of the sample instead of a single forecast."
---

Durante una campaña se habla mucho de encuestas y poco de quién puede votar, cuánta gente participa y cómo se traduce el voto en escaños. He construido el [observatorio electoral del 29N](https://elecciones29n.pruebapublica.com/) para reunir esas cuatro capas con una regla sencilla: **dato oficial cuando existe, estimación cuando toca y ninguna conclusión que el dato no sostenga**.

No es un pronóstico. Es una herramienta para leer lo que otros publican sin perder de vista la incertidumbre. Las definiciones están en el [glosario del observatorio](https://elecciones29n.pruebapublica.com/glosario.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=29n-glosario) y la ficha de cada provincia, con censo, escaños y resultado de 2023, en [territorio](https://elecciones29n.pruebapublica.com/territorio.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=29n-territorio).

## Una media, no un pronóstico

El módulo de sondeos calcula una **media móvil de los sondeos publicados** en los últimos 14 días, con el **rango mínimo–máximo** y el número de encuestas que la sostienen. Si la ventana no reúne cuatro sondeos, se amplía a los cuatro más recientes (máximo 90 días) y se indica como «ventana ampliada».

Con el corte del 18 de octubre:

| Partido | Media | Rango | n |
|---|---:|---:|---:|
| PP | 31,5 % | 31,3–32,3 | 4 |
| PSOE | 26,7 % | 25,3–26,9 | 4 |
| VOX | 19,2 % | 18,8–19,4 | 4 |
| SUMAR | 5,1 % | 4,9–5,8 | 4 |

La media pondera por **muestra** (√n) y por **recencia** (vida media de 10 días), y publica también la **mediana**: si media y mediana se separan, hay valores extremos. No cocino encuestas ni modelo intención de voto individual; agrego lo que otros publican y muestro la dispersión.

## El rango no es un intervalo de confianza

El mínimo y el máximo describen **cuánto discrepan entre sí los sondeos incluidos**, no toda la incertidumbre sobre el resultado. La incertidumbre real es mayor: depende de la metodología de cada casa, del trabajo de campo, de la cocina de la encuesta y de los errores no muestrales.

Tampoco es lo mismo **sumar entrevistados** que tener una muestra única. Cuatro sondeos de fechas y metodologías distintas no equivalen a una encuesta de 15.000 personas: son cuatro fotografías diferentes. Por eso la web muestra las fechas, la muestra de cada sondeo y el número de encuestas, no una cifra aislada.

## El problema de una sola casa

El panel de **salud de la muestra** es el control de calidad del agregado. Hoy dice: **4 sondeos, 1 encuestadora, último hace 7 días → frágil**. Con una sola casa, la «media» es en realidad su serie, no un agregado entre encuestadoras.

| Indicador | Valor | Lectura |
|---|---:|---|
| Sondeos en la media | 4 | suficiente en número |
| Encuestadoras | 1 | **frágil**: falta contraste entre casas |
| Días desde el último | 7 | dentro de lo razonable |

La solución no es más matemática: es **cobertura**. Con dos o tres sondeos de otras casas cada semana, el panel pasa a «suficiente» y la media gana lo que hoy le falta: independencia. Por eso el proyecto incluye un registro de fuentes y un formulario de alta manual para incorporar encuestas con fuente, fecha y muestra.

## Las otras tres capas

El observatorio no vive solo de encuestas. Debajo hay tres capas de datos oficiales:

| Capa | Qué responde | Fuente |
|---|---|---|
| Censo | quién puede votar | INE · Oficina del Censo Electoral |
| Participación | quién vota y cómo ha cambiado | JEC, 1979–2023 |
| Territorio | cómo se traduce el voto | BOE · RD 806/2026 y LOREG |

- **Censo**: 38.728.356 electores, de ellos 35.958.711 en España y 2.769.645 en el extranjero; 1.615.127 nuevos electores desde las generales de 2023. La edad y el sexo se publican solo para los residentes en España: el extranjero no tiene ese desglose.
- **Participación**: 15 elecciones generales desde 1979. En 2023 votó el 66,59 % del censo; el máximo fue 79,97 % (1982) y el mínimo, 66,23 % (noviembre de 2019). Es dato oficial, no estimación.
- **Territorio**: 350 diputados en 52 circunscripciones. Teruel elige 3 con 106.251 electores; Madrid, 38 con 5.536.913. Son 35.417 electores por escaño frente a 145.708: **4,1 veces de diferencia**. El mínimo de 2 escaños por provincia y el D'Hondt provincial explican buena parte del resto.

![Media agregada y salud de la muestra del observatorio 29N](/observatorio-29n-datos.png)

*La tarjeta resume la media y el rango. La incertidumbre va en el dato, no en una nota al pie.*

## Qué se puede y qué no concluir

**Se puede** describir la tendencia y la dispersión, comparar la evolución con la participación histórica y entender por qué dos partidos con porcentajes parecidos obtienen representación distinta.

**No se puede** predecir el resultado, atribuir preferencias por edad, sexo, renta o territorio, ni convertir una correlación territorial en una causa. El censo dice quién puede votar, no a quién vota. La participación dice cuántos votaron, no a quién. Y una simulación de escaños con distrito único sirve para ver el tamaño de los bloques, no para anticipar el reparto real.

## Comparación con los grandes sondeos

No compito en tamaño de muestra ni en cocina de encuestas. Compito en otra cosa: **transparencia y contexto**.

| Gran sondeo | Este observatorio |
|---|---|
| Una muestra grande y una metodología propietaria | Muchas muestras pequeñas, cada una con su fuente |
| Un titular con una cifra | Media, rango, n, mediana y encuestadoras |
| Resultado aislado | Serie temporal y comparación con datos oficiales |
| Opaco en los detalles | Metodología, límites y datos descargables |

Un gran sondeo puede ser más preciso para una pregunta concreta; un agregado es más útil para ver **qué se sostiene entre casas** y **cuánto cambia la foto**. Son herramientas distintas, no rivales.

## Cómo se actualiza

La ingesta y el build corren en local y publican un sitio estático. Cada ejecución pasa por **staging, validación y sustitución atómica**: si un dato no cuadra, no se publica y se conserva la última versión buena. Después, un **canario** comprueba en la URL pública que el gráfico, el JSON y la tarjeta están presentes.

Durante el **blackout electoral** (24–28 de noviembre) no se publican ni difunden sondeos. El agregado se congela y la web lo indica. La participación y los resultados del 29N se publicarán **después** de la jornada, con fuente oficial; si la fuente oficial no es accesible por HTTP, hay un procedimiento manual con validación y fuente obligatoria.

## Para qué sirve

Para un periodista, es una forma rápida de citar una media **con su rango y su n**. Para un docente, un caso práctico de incertidumbre y de diferencia entre dato y estimación. Para cualquier lector, una manera de no confundir una encuesta con un resultado.

El observatorio es abierto: el [método](/metodologia.html), las [fuentes y datos](/fuentes.html) y el [código](https://github.com/mcasrom/elecciones29n-osint) están publicados. Si encuentras un error o una fuente mejor, la corrección es parte del método.

La regla sigue siendo la misma: **una media no es un pronóstico; una banda alta no es una campaña; y una cifra sin fuente no es un dato**.

> **Nota de elaboración.** La estructura y la redacción se han preparado con **asistencia de IA generativa**. La selección de fuentes, la comprobación de cada cifra y las conclusiones son mías: he contrastado el censo con el INE, la participación con la JEC, los escaños con el BOE y los sondeos con su fuente original. Si una cifra no se puede rastrear, no se publica. Cualquier error es responsabilidad mía.

*M. Castillo · [Observatorio electoral 29N](https://elecciones29n.pruebapublica.com/)*
