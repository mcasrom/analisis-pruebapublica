---
title: "El factor urna en el 29N: qué se puede medir y qué no antes de votar"
description: "Participación histórica, territorio y lluvia describen el 29N; no permiten predecir el voto. Guía para leer la jornada sin confundir datos con pronósticos."
pubDate: 2026-11-27
author: "M. Castillo"
assisted: "GenAI (documentación, contraste y redacción asistida)"
tags: ["elecciones", "participación", "29N", "territorio", "meteorología", "D'Hondt", "análisis electoral"]
categoria: "análisis"
image: "/factor-urna-29n-og.png"
abstract_en: "Historical turnout, provincial district size and rainfall can describe the context of Spain's 29 November 2026 election, but they cannot forecast the vote. This piece separates what the 29N observatory can measure from what would require a validated model and provincial polling."
resumen:
  - "La participación de 2023 fue del 66,59 %, la tercera más baja de la serie histórica; el mínimo fue 66,23 % en noviembre de 2019."
  - "El territorio pesa: Teruel elige un escaño por cada 35.417 electores y Madrid uno por cada 145.708."
  - "La lluvia se asocia a una participación algo menor, pero el efecto es modesto y no causal."
  - "No hay base para una previsión de voto ni para una curva horaria histórica: los avances de las 14:00 y las 18:00 se leen como protocolo, no como pronóstico."
faq:
  - q: "¿Este artículo usa sondeos del 29N?"
    a: "No. No reproduce porcentajes ni rangos de sondeos actuales. Solo utiliza series históricas oficiales, datos de territorio y el estudio meteorológico del observatorio 29N."
  - q: "¿Se puede predecir la participación con el tiempo?"
    a: "No con nuestros datos. El estudio M5 encuentra una asociación negativa y modesta entre lluvia y participación, pero es observacional: no permite una predicción individual ni provincial."
  - q: "¿Se puede calcular el resultado a partir de la participación histórica?"
    a: "No. La participación no determina por sí sola el reparto de escaños. Sin encuestas provinciales y un modelo validado no se puede convertir un escenario de participación en un resultado electoral."
draft: false
---

**Este texto no contiene sondeos actuales.** No hay porcentajes de intención de voto, ni rangos de encuestas, ni una estimación de escaños. La pregunta es otra: qué permite medir el archivo del 29N sobre la participación y qué no permite afirmar antes de que se abran los colegios.

La respuesta corta: permite describir el punto de partida histórico, la asimetría del territorio y una asociación modesta con la lluvia. No permite predecir el voto, ni trazar una curva horaria con nuestros datos, ni convertir la participación en escaños sin un modelo que no tenemos.

Este texto continúa el análisis de [Más votos no son más escaños](/posts/participacion-65-75-29n/), publicado el 22N. No repito los escenarios de participación: añado la parte meteorológica, la escala provincial y el protocolo de lectura de los avances.

## Tres capas, no una cadena automática

El sistema electoral no convierte votos en escaños en un solo paso. Primero hay un **censo**; después, una **participación**; finalmente, un reparto provincial mediante D'Hondt y un umbral del 3 %.

![Esquema de tres capas: censo, participación y escaños.](/factor-urna-flujo.svg)

*Esquema propio. No es una predicción ni una relación causal: muestra qué se interpone entre el censo y el reparto.*

La participación no es un telón de fondo: modifica qué votos entran en el reparto. Pero tampoco es una palanca única. Un mismo porcentaje nacional puede producir mayorías distintas según dónde suba o baje la abstención.

## 1. La serie histórica: el punto de partida

La participación en generales ha oscilado entre el **66,23 %** de noviembre de 2019 y el **79,97 %** de 1982. La media de las 15 convocatorias es **71,33 %**. En 2023 fue **66,59 %**, la tercera más baja de la serie.

![Serie histórica de participación en elecciones generales, 1979–2023.](/factor-urna-participacion.svg)

*Elaboración propia con la serie de la Junta Electoral Central. La línea no es una previsión: describe lo ocurrido.*

Esa serie sirve para situar el listón, no para extrapolarlo. Un 29 de noviembre no es comparable sin más a un 23 de julio: cambian la estación, la luz, la agenda pública y el calendario escolar y laboral. La serie histórica no permite aislar esos factores.

## 2. El territorio: no todos los escaños cuestan lo mismo

La circunscripción importa. En 2026, **Teruel** elige 3 escaños con **35.417 electores por escaño**; **Madrid** elige 38 con **145.708**. La diferencia es de más de cuatro veces.

![Electores por escaño en una selección de provincias.](/factor-urna-territorio.svg?v=2)

*Elaboración propia con el censo del INE y el Real Decreto 806/2026. La selección muestra extremos y mediana; no son las 52 provincias.*

Eso no significa que un voto en Teruel “valga” cuatro veces más en abstracto. Significa que el coste de un escaño en electores es distinto y que una variación de participación no se traduce igual en todas las circunscripciones.

En provincias grandes, un cambio de participación altera los últimos restos del reparto. En provincias de 3 a 6 escaños, un desplazamiento concentrado puede cambiar el orden de D'Hondt con pocos miles de votos. Sin encuestas provinciales no se puede saber en qué dirección ocurrirá.

## 3. La lluvia: una fricción modesta, no una explicación

El estudio M5 del observatorio 29N cruza **806 observaciones** de participación provincial con datos de AEMET en 16 elecciones. La correlación simple es **−0,174**; dentro de cada elección, **−0,136**.

La lectura por intensidad de lluvia deja una diferencia visible pero pequeña:

| Precipitación media | Observaciones | Desviación intra-elección |
|---|---:|---:|
| 0 mm | 490 | **+0,41 pp** |
| 0–1 mm | 175 | **−0,38 pp** |
| 1–5 mm | 81 | **−0,18 pp** |
| Más de 5 mm | 60 | **−2,02 pp** |

![Barras de desviación de participación según precipitación.](/factor-urna-lluvia.svg)

*Elaboración propia con el panel M5. La desviación se calcula respecto a la media de cada elección. Es una asociación observacional, no causalidad.*

El coeficiente de precipitación es **−0,041 puntos por milímetro** en toda la serie (p=0,081) y **−0,041** desde 2004 (p=0,007). El viento aparece positivo, pero no lo interpreto como un efecto real: puede reflejar sistemas meteorológicos o correlación espuria.

Tres límites:

- La lluvia se agrega por provincia; oculta la variación local.
- El panel es observacional; no hay asignación aleatoria del tiempo.
- El efecto estimado es pequeño y no permite predecir una provincia concreta.

## 4. Las 14:00 y las 18:00: protocolo de lectura, no pronóstico

El Ministerio del Interior publica dos avances de participación. Nuestro archivo **no contiene una serie histórica propia de esos avances**, así que no puedo decir cuál será la curva del 29N ni cuánto debería subir cada tramo.

Lo que sí se puede hacer es leerlos con un protocolo:

| Franja | Qué mirar | Qué no concluir |
|---|---|---|
| 09:00–11:00 | Constitución de mesas y normalidad del dispositivo | No permite estimar el resultado final |
| 11:00–14:00 | Primer bloque de afluencia; comparar por provincia, no solo el total | Un dato bajo no significa abstención si la lluvia desplaza el voto a la tarde |
| 14:00 | Primer avance oficial | No es una proyección; el voto por correo y el escrutinio no están cerrados |
| 14:00–16:30 | Valle de mediodía | No se puede interpretar sin la referencia de la misma provincia |
| 16:30–18:30 | Segundo repunte; última luz natural | El avance de las 18:00 es más informativo, pero sigue siendo parcial |
| 18:30–20:00 | Cierre y noche | No se convierte en escaños sin escrutinio y reparto provincial |

La clave es comparar **la misma provincia y la misma hora** con una referencia histórica, no el titular nacional aislado. Y, sobre todo, no confundir un avance de participación con un resultado.

## Lo que no se puede afirmar

- **No hay previsión de voto.** No tenemos encuestas provinciales ni un modelo validado de transferencia de voto.
- **No hay previsión de participación.** El estudio M5 no predice; describe asociaciones.
- **No hay curva horaria histórica.** Los avances de las 14:00 y las 18:00 son un protocolo de seguimiento, no una serie.
- **No hay efecto causal del calendario.** Se puede describir el contexto de un 29N; no atribuirle una caída o subida.
- **No hay una tabla de CCAA.** Aquí se habla de provincias y circunscripciones porque es la unidad del reparto.
- **No hay sondeos actuales.** Este texto se publica sin reproducir encuestas durante la veda.

## Cómo seguir el 29N sin convertir el dato en ruido

- [Participación histórica](https://elecciones29n.pruebapublica.com/participacion.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=factor-urna-29n): la serie completa y su descarga.
- [Factores y participación](https://elecciones29n.pruebapublica.com/factores.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=factor-urna-29n): qué se puede estudiar y qué no.
- [Territorio y escaños](https://elecciones29n.pruebapublica.com/territorio.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=factor-urna-29n): electores por escaño y ficha provincial.
- [Cómo leer una encuesta](https://elecciones29n.pruebapublica.com/como-leer.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=factor-urna-29n): media, rango y muestra no son un pronóstico.
- [Noche electoral](https://elecciones29n.pruebapublica.com/noche-electoral.html?utm_source=analisis&utm_medium=crosspromo&utm_campaign=factor-urna-29n): qué se publica y cuándo.

También enlazo dos piezas previas del blog: [El silencio de los sondeos antes del 29N](/posts/silencio-sondeos-29n/) y [El voto que no llega al escaño](/posts/voto-sin-escanio-2023/).

## Fuentes y método

- Serie de participación: Junta Electoral Central, procesada en [participacion.json](https://elecciones29n.pruebapublica.com/data/participacion.json).
- Censo y escaños: INE y Real Decreto 806/2026, procesados en [escanos_2026.json](https://elecciones29n.pruebapublica.com/data/escanos_2026.json).
- Meteorología y participación: AEMET OpenData y Ministerio del Interior, panel M5 de 806 observaciones; resultados en [m5-results.json](https://elecciones29n.pruebapublica.com/data/m5-results.json).
- Resultados provinciales: Ministerio del Interior, procesados en [congreso.json](https://elecciones29n.pruebapublica.com/data/congreso.json).

No reproduzco sondeos actuales ni estimaciones de escaños. La serie histórica y el panel meteorológico describen; no predicen.

*Nota sobre el proceso de elaboración:* este análisis se apoya en datos oficiales y en el estudio M5 del observatorio 29N. Lo he elaborado con asistencia de IA para el contraste y la redacción, bajo criterio y supervisión editorial humanos, con verificación manual de cifras y enlaces. Los errores de hecho, si los hay, son responsabilidad del autor y se corregirán.

*@pruebapublica · analisis.pruebapublica.com*
