---
title: "Frontera Sur: lo que un radar de coordinación ve (y lo que no) sobre la conversación España-Marruecos"
description: "Qué muestra hoy FIMI Radar sobre el tema Frontera Sur: 75 clusters, 314 cuentas y un cluster de banda alta con sus componentes e hipótesis. Un post con datos, no de opinión, y con una advertencia: señal no es atribución."
pubDate: 2026-09-24
author: "M. Castillo"
assisted: "GenAI (redacción y estructura)"
tags: ["FIMI", "desinformación", "Frontera Sur", "Ceuta", "Marruecos", "OSINT", "radar de coordinación"]
categoria: "análisis"
draft: false
image: "/frontera-sur-radar-og.png"
serie: "Ceuta 2026"
serie_numero: 5
---

# Frontera Sur: lo que un radar de coordinación ve (y lo que no)

La conversación sobre la frontera entre España y Marruecos —Ceuta, Melilla, la
migración, la política exterior— es una de las más intensas de la esfera pública
española. Casi todo lo que se publica sobre ella se analiza editando *contenido*:
qué se dice, quién lo dice, si es verdad o mentira. Este artículo hace otra cosa.
Mira **forma**: quién mueve el mismo mensaje, a la vez, y con qué estructura de
enlaces. Eso es lo que mide [FIMI Radar](https://fimi.viajeinteligencia.com), un
radar OSINT que analiza **comportamiento** de coordinación, no intenciones ni
ideologías. Un aviso por delante: esto es un encargo **con datos**, no de opinión,
y todo lo que sigue sale de la base de datos de producción del radar.

## Qué muestra FIMI Radar ahora mismo

El tema `frontera_sur` lleva **en detección activa desde el 31 de agosto de 2026**
(**24 días** a fecha de este artículo). El corpus incluye además **contenido
histórico**: la ventana de captura del radar es de **90 días**, así que hay
publicaciones con fecha de hasta el **26 de junio de 2026**. En ese corpus, hoy:

- **14.779 eventos** asociados al tema (ventana de 90 días), de los cuales
  **13.576** tienen fecha dentro de los últimos 23 días.
- **75 clusters** en la vista activa. Un *cluster* es un grupo de cuentas que el
  detector ha unido por coincidir en el tiempo y en el contenido o los enlaces; no
  es un hallazgo «manual», es lo que emerge del grafo de coordinación.
- **314 cuentas distintas** implicadas en esos clusters.

El cluster más puntuado es el `frontera_sur_cluster_005`. Ojo con el nombre: los
identificadores de cluster **rotan** cada ciclo de detección (uno cada 6 horas),
así que para seguirlo de verdad hay que usar su **ID estable** (`lineage_id
frontera_sur_cluster_010@1789928930`), que permite rastrearlo entre ciclos aunque
el nombre cambie. Sus números:

- **Score 68,9 sobre 100 → banda HIGH.**
- **Componentes**: coordinación **100**, anomalía **37,9**, infraestructura
  **100**, densidad de red **98,7** (y amplificación 25,1).
- **Hipótesis** (de mayor a menor): H2 *campaña coordinada doméstica con
  estructura* **0,83**; H5 *sincronía sostenida sin estructura* **0,75**; H1
  *viralización orgánica* **0,55**; H3 *operación de influencia extranjera*
  **0,44**; H4 *amplificación mediática* **0,30**; H6 *sin evidencia concluyente*
  **0,20**; H2b *sincronización sin atribución de operador* **0,00**.
- **Tamaño y ventana**: 43 eventos, del **1 al 22 de septiembre**, con **9 cuentas,
  de las cuales 5 forman un núcleo mutuamente interconectado**.

Conviene subrayar qué significa **HIGH**. No es «campaña confirmada» ni «actor
identificado». Es una **señal de coordinación anómala que merece revisión humana**:
el radar dice «aquí pasa algo que rompe el patrón normal», no «esto lo hace tal
país o tal partido». De hecho, la atribución de actor en este cluster es
**UNKNOWN / no concluyente**, y así se declara.

![Componentes del radar (coordinación, anomalía, infraestructura, densidad) y ranking de hipótesis del cluster top de Frontera Sur](/frontera-sur-radar-datos.png)

## Señales sostenidas en el tiempo

Un titular suelto no es una campaña; el mismo mensaje reapareciendo **días
distintos** sí merece atención. El tema tiene hoy **301 narrativas sostenidas**
(entendiendo «narrativa» como un mismo titular o muy similar que el radar ha
registrado como hallazgo en **3 o más días distintos**). Tres ejemplos, con su
duración real:

- «Última hora de la entrada de inmigrantes» — **25 días** (del 31 de agosto al 24
  de septiembre).
- «El PP reprocha a Sánchez que señale a…» — **25 días**.
- «La fiscal jefa de Ceuta: hay casi una agresión…» — **23 días**.

Que una línea aparezca durante semanas puede ser interés informativo legítimo
(un tema que no se apaga) o repetición coordinada. El radar no decide cuál:
**describe la persistencia** y deja la interpretación al analista.

## Qué añade el contraste con una IA con búsqueda web

Aquí está el ángulo que más nos interesa contar, porque es donde se malinterpretan
herramientas como esta. Comparamos **ese mismo cluster top** contra un análisis
independiente hecho por un modelo de lenguaje con búsqueda web en vivo, usando
**las mismas seis hipótesis**. El resultado no es una competición —**ninguno de
los dos «gana»**— porque miden **capas distintas** del mismo fenómeno:

- **La IA ve contexto periodístico**: fact-checks, investigaciones y reacciones
  publicadas **después** del evento, que un radar automático no ingiere por sí
  solo. Es contexto narrativo valioso.
- **FIMI ve estructura de red real**: qué cuentas concretas participan, cuántas
  están conectadas entre sí, qué dominios comparten y con qué sincronía. Eso
  ningún chat lo puede reconstruir desde texto superficial: requiere el grafo.

Dicho de otro modo: una herramienta es buena leyendo **lo que se dice**; la otra,
midiendo **cómo se difunde**. Juntas cubren más que cada una por separado, y esa
complementariedad —no la sustitución— es la conclusión honesta.

## Por qué esto es proceso serio (no marketing)

Lo más relevante de esa comparación no es que coincidieran, sino que **destapó dos
sesgos reales que se corrigieron en 48 horas**. Primero, una hipótesis del motor
estaba **mal etiquetada**: se llamaba «campaña política» pero su fórmula no medía
ninguna señal política, solo sincronía y diversidad de enlaces; el nombre
prometía algo que el número no calculaba, y se renombró para reflejar lo que de
verdad mide. Segundo, el criterio para considerar que hay **estructura de red**
era **incompleto**: aceptaba como «núcleo coordinado» grupos que en realidad eran
simples cadenas o estrellas de cuentas sin conexión mutua real; ahora se exige un
núcleo **mutuamente interconectado** de al menos tres cuentas, alineado con el
criterio que ya usaba el propio panel. Ambos arreglos están documentados y son
auditables. En un radar FIMI, **reconocer y corregir los propios sesgos es parte
del producto**, no una nota al pie.

## Límites: lo que este ejercicio no es

Para no vender humo: esto fue **una comparación puntual**, no un *benchmark*
continuo ni una validación exhaustiva. Un solo caso bien mirado puede revelar
sesgos, pero no certifica el rendimiento global del detector. Y la disciplina de
fondo sigue intacta: el radar **no atribuye actores**. La atribución es un módulo
separado y conservador que, por defecto, devuelve **UNKNOWN**; solo se pronunciaría
sobre un actor externo si convergen señales fuertes y verificables. En el día a
día, lo que ofrece es esto: un mapa de **patrones de comportamiento** —sincronía,
repetición de enlaces, densidad de red— para que **una persona** decida si algo
merece mirarse más de cerca.

## Para explorarlo tú mismo

Todo lo anterior es comprobable en abierto. El dashboard en vivo, con los diales
por tema, las tarjetas de cluster, la metodología y los límites declarados, está en
**[fimi.viajeinteligencia.com](https://fimi.viajeinteligencia.com)**. Desde ahí
puedes seguir el tema Frontera Sur, ver las hipótesis de cada cluster y su
evidencia, y contrastar por tu cuenta. La transparencia no es un adorno del
proyecto: es su antídoto contra el error más común al hablar de desinformación,
que es confundir **coordinación observada** con **culpable identificado**.

## Referencias

- FIMI Radar (producción): https://fimi.viajeinteligencia.com — datos del
  dashboard y API pública `v1`.
- Base de datos del radar (`data/radar.db`): tablas `events`, `event_temas`,
  `clusters`, `assessments`, `cluster_lineage`, `findings` (cifras de este
  artículo, ciclo del 24/09/2026).
- Metodología y límites: https://fimi.viajeinteligencia.com/research.html y
  `docs/ATRIBUCION-LIMITACIONES.md` del repositorio AGPL-3.0 `hybrid-fimi-radar`.
