---
title: "Qué mirar en el 29N: procedimiento, recuento y confianza"
description: "Qué es vulnerable en un proceso electoral, qué dice el radar sobre el 29N y qué no, y qué mirar en las semanas previas. Señal, no atribución."
pubDate: 2026-11-12
author: "M. Castillo"
assisted: "GenAI (documentación, contraste y redacción asistida)"
tags: ["desinformación", "FIMI", "elecciones", "29N", "OSINT", "procedimiento"]
categoria: "análisis"
serie: "Desinformación, injerencia y elecciones"
serie_numero: 2
image: "/og-preview.png"
draft: true
abstract_en: "What is vulnerable in an election process, what the FIMI radar shows about Spain's 29N election and what it does not, and what to watch in the final weeks. Signal, not attribution."
resumen:
  - "El procedimiento es el objetivo más barato: un mensaje con el día o el lugar equivocados puede desmovilizar sin necesidad de una campaña coordinada."
  - "En el radar, la señal extranjera (H3) es dominante en 2 de 160 clústeres; con score ≥0,3 aparece en 45, pero la atribución sigue siendo UNKNOWN en 159 de 160."
  - "Lo que más se ve no es lo más peligroso: dominan la sincronía y la campaña doméstica, no una operación extranjera demostrada."
faq:
  - q: "¿Esto demuestra que hay una operación extranjera en el 29N?"
    a: "No. El radar mide compatibilidad con hipótesis, no atribución. H3 es la hipótesis dominante en 2 de 160 clústeres y aparece con score ≥0,3 en 45, pero la atribución es UNKNOWN en 159 de 160. Una puntuación alta no identifica a un actor."
  - q: "¿Qué es el clúster 014?"
    a: "Un grupo de 44 eventos y 6 autores del tema España-elecciones. Contiene un mensaje que llama a votar «el lunes 30» en una comisaría; el 29N es domingo 29. No es un clúster monotemático: mezcla ese mensaje con política general, y el radar no atribuye su autoría."
  - q: "¿Qué hago si veo un mensaje raro sobre cómo votar?"
    a: "No lo reenvíes. Comprueba día, lugar y horario solo en la JEC, el BOE o los canales oficiales del Ministerio del Interior. Si no coincide, es un mensaje a descartar, aunque lo comparta alguien con muchos seguidores."
  - q: "¿El radar puede predecir el resultado?"
    a: "No. El observatorio del 29N publica una media de sondeos con rango y una ficha por provincia; no proyecta escaños ni intención de voto. La incertidumbre va en el dato."
---

# Qué mirar en el 29N: procedimiento, recuento y confianza

*A 17 días de las generales. Segunda parte de la serie; la primera explicó los instrumentos.*

En la [primera parte](/posts/desinformacion-instrumentos/) describí cómo se fabrica y se distribuye una campaña: medios clonados, vídeos sintéticos, redes de webs. Aquí bajo al proceso electoral español y, en concreto, al 29N. No voy a decir que haya una operación en marcha. Voy a decir **qué es vulnerable, qué se ve en los datos y qué no se puede concluir**.

## Qué puede fallar

| Objetivo | Qué mirar | Dónde comprobarlo |
|---|---|---|
| **Procedimiento** | Día, lugar, horario, mesa, voto por correo | [JEC](https://www.juntaelectoralcentral.es/), [BOE](https://www.boe.es/), canales oficiales del Interior |
| **Recuento** | Voto por correo, empresas adjudicatarias, escrutinio | JEC y actas oficiales; no anticipar resultados |
| **Candidatos** | Deepfakes, documentos falsos, filtraciones | Verificación independiente y respuesta del partido |
| **Apoyo percibido** | Encuestas falsas, cuentas de apariencia masiva | [Observatorio 29N](https://elecciones29n.pruebapublica.com/): media con rango, no pronóstico |
| **Infraestructura** | Ciberataques al censo o a webs oficiales | Comunicados oficiales; no especular con caídas |

## El procedimiento: el bulo más barato

No hace falta una red sofisticada para desmovilizar. Basta con un mensaje que cambie el día o el lugar. En el tema **España-elecciones** del radar hay un clúster —el **014**— que contiene un mensaje llamando a votar «el lunes 30» en una comisaría. El 29N es **domingo 29**.

El matiz importa: el clúster tiene **44 eventos y 6 autores** y mezcla ese mensaje con política general. No es «el clúster de la desinformación procedimental»; es un grupo que **contiene** ese mensaje. Y el radar no atribuye quién lo escribió: su confianza es **NO_ATTRIBUTION**.

La defensa es sencilla y no requiere tecnología: **si un mensaje cambia el día, el lugar o el horario, se descarta**. La fuente es la JEC, el BOE y los canales oficiales. No un vídeo, no una captura, no un influencer.

## El recuento y el voto por correo

El segundo objetivo es la confianza en el recuento. Los ataques narrativos suelen llegar por dos vías: el **voto por correo** (supuestas irregularidades, papeletas manipuladas) y el **escrutinio** (empresas adjudicatarias, retrasos, actas). En Alemania y Rumanía se han documentado campañas que explotaron exactamente esos puntos. En España, la respuesta es la misma: **actas y comunicados oficiales**, no filtraciones ni cuentas anónimas.

Una regla práctica: **ningún resultado es un resultado hasta que es oficial**. Anticipar un recuento con datos parciales es la forma más rápida de amplificar un error, aunque no haya mala fe.

## Lo que ve el radar (y lo que no)

He revisado el tema **España-elecciones generales** del observatorio: **160 clústeres**. Los datos que sostienen este texto son estos:

- **H3 (operación de influencia extranjera) es la hipótesis dominante en 2 de 160 clústeres.**
- **H3 aparece con score ≥0,3 en 45 de 160** —como hipótesis secundaria, no como conclusión.
- **Atribución: UNKNOWN en 159 de 160; PROXY en 1.**
- Lo dominante es la **sincronía doméstica (H2b)** y la **campaña doméstica (H2)**; el eco de prensa (H4) también pesa.

Eso no significa que no haya riesgo. Significa que **lo que más se ve no es lo más peligroso**: el volumen y la sincronía doméstica dominan; la señal extranjera es minoritaria y no atribuible con los datos actuales. Una puntuación de compatibilidad no es una probabilidad ni una prueba.

El ejemplo del clúster 014 sirve para lo contrario de lo que parece: un mensaje procedimental puede circular sin una operación extranjera detrás. Y una operación extranjera puede no dejar rastro en el radar. Las dos cosas son ciertas a la vez.

## Precauciones por actor

- **Ciudadano**: contrasta fuente y fecha antes de compartir; para votar, solo canales oficiales; desconfía de lo que confirma lo que ya piensas; cuidado con vídeos virales sin contexto.
- **Medios y verificadores**: no atribuyas sin evidencia; separa amplificación de coordinación; no amplifiques el bulo al desmentirlo.
- **Partidos y candidatos**: protocolo de respuesta rápida a deepfakes propios; no amplifiques sin comprobar.
- **Administración**: comunicación proactiva sobre el procedimiento; canal único oficial; coordinación con el [procedimiento nacional](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2020-13663) y con la red europea de alerta.

## Soluciones y límites

- **Transparencia de plataformas**, etiquetado de IA y trazabilidad de publicidad política: es lo que busca la [DSA](https://commission.europa.eu/strategy-and-policy/priorities-2019-2024/europe-fit-digital-age/digital-services-act_en) y el [Escudo Europeo de la Democracia](https://commission.europa.eu/priorities-2024-2029/democracy-and-our-values_en). La aplicación es lenta y no sustituye a la verificación.
- **Verificación independiente y alfabetización mediática**: la defensa más barata y duradera.
- **Qué no funciona bien**: la anulación como herramienta rutinaria, la atribución sin pruebas y la censura preventiva. Cada medida debe pasar el test de la libertad de expresión.

## Qué vigilar en los próximos 17 días

1. **Procedimiento**: cualquier mensaje que cambie día, lugar u horario. Fuente: JEC/BOE.
2. **Voto por correo**: plazos y comunicados oficiales; no rumores sobre papeletas.
3. **Deepfakes de candidatos**: respuesta del partido y verificación independiente.
4. **Encuestas**: media con rango, no titular aislado. En el [observatorio del 29N](https://elecciones29n.pruebapublica.com/robustez.html) está la robustez del dato.
5. **Blackout**: del 24 al 28 de noviembre no se publican ni difunden sondeos. El agregado se congela.
6. **Noche electoral**: qué se publica, cuándo y con qué fuente; el [plan está aquí](https://elecciones29n.pruebapublica.com/noche-electoral.html).

## Cierre

La conclusión útil no es «hay una operación» ni «no pasa nada». Es que **la información es infraestructura crítica** y que protegerla exige método: distinguir **señal de atribución**, **conducta de contenido** y **amplificación de coordinación**.

En el 29N, la mejor defensa no es una lista de enemigos: es saber **dónde está la fuente oficial**, **qué prueba hace falta** y **qué no se puede concluir** con los datos que tenemos.

---

### Fuentes
- [JEC](https://www.juntaelectoralcentral.es/) · [LOREG](https://www.boe.es/buscar/act.php?id=BOE-A-1985-11672) · [Orden PCM/1030/2020](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2020-13663).
- [Observatorio 29N](https://elecciones29n.pruebapublica.com/) · [robustez del dato](https://elecciones29n.pruebapublica.com/robustez.html) · [cómo leer la media](https://elecciones29n.pruebapublica.com/como-leer.html).
- [API del tema España-elecciones (FIMI)](https://fimi.viajeinteligencia.com/api/v1/tema/espana_elecciones) — datos de los clústeres citados.
- [DSA](https://commission.europa.eu/strategy-and-policy/priorities-2019-2024/europe-fit-digital-age/digital-services-act_en) · [Democracia y valores (Comisión)](https://commission.europa.eu/priorities-2024-2029/democracy-and-our-values_en).
- [Primera parte: los instrumentos](/posts/desinformacion-instrumentos/) · [marco conceptual](/posts/zona-gris-guerra-hibrida-injerencia-extranjera/).

*Nota sobre el proceso de elaboración:* este análisis se apoya en datos públicos del observatorio y en documentación oficial enlazada. Lo he elaborado con asistencia de IA para la documentación, el contraste y la redacción, bajo criterio y supervisión editorial humanos. Los datos del radar son una instantánea fechada; miden compatibilidad y amplificación, no atribución. Los errores de hecho, si los hay, son responsabilidad del autor y se corregirán.

*@pruebapublica · analisis.pruebapublica.com*

<!--
NOTAS INTERNAS (no publicar):
- H3: 2/160 dominante; 45/160 con score >=0,3; UNKNOWN 159/160; PROXY 1.
- Clúster 014: 44 eventos, 6 autores, score 71,06, NO_ATTRIBUTION; contiene el mensaje del lunes 30.
- No se citan cifras de Rumanía (25k/85k) ni el informe UCM/SEAE: sin URL exacta verificada.
- OG pendiente: generar una tarjeta propia antes de publicar (1200x630).
- Enlazar la pieza 1 cuando esté publicada (slug definitivo).
-->
