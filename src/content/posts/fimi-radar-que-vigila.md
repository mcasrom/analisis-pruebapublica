---
title: "FIMI Radar: qué vigila un radar de desinformación (y cómo leerlo sin sobreinterpretar)"
description: "Presentación de FIMI Radar, un observatorio OSINT que detecta coordinación y amplificación en español. Qué mide, qué no mide y por qué un radar de desinformación debe leerse con cautela."
pubDate: 2026-09-09
tags: ["FIMI", "desinformación", "OSINT", "radar", "metodología", "seguridad nacional", "análisis"]
image: "/fimi-radar-og.jpg"
categoria: "análisis"
author: "M. Castillo"
assisted: "GenAI (investigación y redacción asistida)"
draft: false
---

Este blog analiza geopolítica y poder. Desde hace unas semanas, detrás de los artículos, hay una herramienta propia que observa un fenómeno concreto: cómo circula y se coordina la información manipulada en español. Se llama **FIMI Radar** y vive en [fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com). Este post la presenta con la misma honestidad con la que se lee el resto del blog: qué hace, qué no hace, y cómo interpretar lo que muestra.

## 1. Qué es FIMI Radar

FIMI Radar es un **observatorio OSINT** (de fuentes abiertas) que monitoriza en tiempo real, con ciclos cada seis horas, la **coordinación y la amplificación** de contenidos en español y sobre temas que afectan a España y su entorno. El acrónimo FIMI viene del inglés *Foreign Information Manipulation and Interference*: la manipulación e interferencia de la información extranjera.

La idea de fondo es sencilla y a la vez exigente: antes de preguntarse *quién* está detrás de una campaña, hay que observar *qué* está pasando — si varias cuentas publican lo mismo casi a la vez, si un relato se amplifica de forma artificial, si hay patrones que no se explican por la conversación orgánica. El radar **nunca parte de un actor sospechoso**: primero observa la anomalía, después evalúa hipótesis.

## 2. Qué monitoriza

Hoy vigila cinco dominios (catálogo que evoluciona):

| Tema | Estado | Qué cubre |
|---|---|---|
| Frontera Sur (España-Marruecos) | Producción | Ceuta, Melilla, migración y la narrativa fronteriza |
| Geopolítica UE-Marruecos | Producción | Relaciones e intereses UE-Marruecos y Magreb |
| Política nacional | Producción | Coordinación en el debate político español |
| Política y desinformación EEUU | Piloto | Interferencia electoral y desinformación sobre EEUU |
| Oriente Medio (Israel-Irán-Gaza) | Piloto | Manipulación informativa en el conflicto |

En el ciclo más reciente procesaba **más de 14.000 eventos** de **29 fuentes** — prensa, redes sociales (Bluesky), buscadores y canales de Telegram — y tenía **más de un centenar de señales de coordinación activas**. Cada tema tiene su propia línea base histórica: el radar no compara a un tema consigo mismo solo con el dato de hoy, sino contra su rango normal de los últimos días.

## 3. Qué detecta (y qué no)

Es tan importante lo que el radar **no** hace como lo que hace.

**Sí observa:**
- **Coordinación**: cuentas que publican el mismo contenido o enlaces casi a la vez.
- **Amplificación**: un relato que se difunde por muchas vías en poco tiempo.
- **Anomalías**: comportamientos que se desvían del patrón normal de un tema.
- **Infraestructura**: cuentas que comparten dominios o base técnica común.

**No hace:**
- **No atribuye.** El radar puede señalar que un conjunto de cuentas se coordina, pero no dice *quién* está detrás sin evidencia organizativa o financiera. Cuando no hay prueba suficiente, la conclusión es **UNKNOWN** — y eso se considera un resultado válido, no un fallo.
- **No decide.** No promueve ni cierra temas por su cuenta: propone y avisa, pero la decisión editorial es siempre humana.
- **No confunde volumen con señal.** Que un tema ocupe muchas noticias legítimas (por ejemplo, un conflicto activo) no es por sí solo una alerta. La señal es la *coordinación*, no el ruido.

## 4. Cómo leer los diales sin sobreinterpretar

La pantalla principal muestra un dial por tema con su aguja, una banda verde (el rango normal del tema) y una muesca roja (el umbral de alerta). La lectura correcta es **relativa**: un 83 en Frontera Sur puede estar dentro de su normalidad (un tema "ruidoso pero estable"), mientras que un 39 en otro tema puede ser una caída fuera de su banda.

La regla de oro del dashboard, y de este post, es la misma: **una señal de coordinación es una hipótesis de trabajo, no una acusación**. El radar etiqueta los clusters con su nivel de confianza y separa la observación (qué pasa) de la atribución (quién lo hace). Leer un radar FIMI sin esa distinción es leer mal.

## 5. Honestidad sobre la validación

FIMI Radar tiene una validación sintética sólida: ante escenarios simulados de campaña coordinada, recupera los patrones correctamente y no genera falsos positivos en tráfico orgánico normal. Pero conviene ser transparente: la **validación contra campañas reales documentadas sigue en curso**. El benchmark contra el catálogo histórico de EUvsDisinfo arroja hoy precisión y recall bajos — un resultado explicable (el catálogo es antiguo y de otro ámbito geográfico, y los canales de prensa no entran en el grafo de coordinación por diseño), pero que demuestra que el radar **no debe leerse como una verdad demostrada sobre campañas actuales**.

Por eso dos de los cinco temas siguen en **piloto**, en calibración. La herramienta es útil como *instrumento de observación*, no como *veredicto*. Quien la use para afirmar que "tal actor lanzó una campaña" sin más evidencia la estaría usando mal — y este blog no quiere contribuir a eso.

## 6. Por qué publicarlo aquí

FIMI Radar es una herramienta del ecosistema de análisis de este blog, y los artículos ya enlazan a sus temas en vivo. Este post la presenta de forma explícita: para quien quiera **ver qué se está coordinando en español** y aprender a leer esa señal con la misma cautela con la que leemos un gráfico de gasto en defensa o un mapa de fronteras.

El radar es **público y gratuito**, sin cuentas y sin rastreo: [fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com). Su código es [abierto en GitHub](https://github.com/mcasrom/hybrid-fimi-radar), y la metodología completa está documentada en la pestaña *Transparencia* del propio dashboard — incluida la explicación de por qué un UNKNOWN es un resultado válido.

## Fuentes

* [FIMI Radar](https://fimi.viajeinteligencia.com) — dashboard en vivo (fimi.viajeinteligencia.com).
* [hybrid-fimi-radar en GitHub](https://github.com/mcasrom/hybrid-fimi-radar) — código y documentación (SCORING.md, ATRIBUCION-LIMITACIONES.md, TRAZABILIDAD.md).
* [EUvsDisinfo](https://euvsdisinfo.eu/) — catálogo de referencia usado en la validación externa (benchmark histórico, ámbito Ucrania/Rusia 2015-23).
* Este blog, serie Geopolítica 101: [Qué es la geopolítica](/posts/que-es-la-geopolitica/), [El gasto en defensa](/posts/espana-gasto-defensa-1977-2025-salto-estrategico/), [El mapa de intereses en el Magreb](/posts/el-mapa-de-intereses/).

---

**Nota sobre el proceso de elaboración.** Este post ha sido generado con asistencia de inteligencia artificial generativa (GenAI) para la investigación y la redacción inicial. El contenido ha sido revisado, editado y validado por el autor. La firmante, **@pruebapublica**, asume la responsabilidad integral del análisis y las opiniones expresadas.

**@pruebapublica** · analisis.pruebapublica.com
