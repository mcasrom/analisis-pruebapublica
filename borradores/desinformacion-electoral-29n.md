---
title: "Qué mirar en el 29N: procedimiento, recuento y confianza"
description: "Esquema de la segunda parte: qué es vulnerable en un proceso electoral, qué dice el radar y qué no, y qué mirar en las semanas previas al 29N."
pubDate: 2026-11-12
author: "M. Castillo"
assisted: "GenAI (documentación, contraste y redacción asistida)"
tags: ["desinformación", "FIMI", "elecciones", "29N", "OSINT", "procedimiento"]
categoria: "análisis"
serie: "Desinformación, injerencia y elecciones"
serie_numero: 2
draft: true
---

# Qué mirar en el 29N: procedimiento, recuento y confianza

> **Estado: ESQUEMA, no publicable.** Falta redactar, cerrar fuentes y verificar los puntos marcados. La primera parte está en `desinformacion-instrumentos.md`.

*Segunda parte de la serie. La primera explicó los instrumentos; esta baja al proceso electoral y al 29N.*

## A. Qué es vulnerable en un proceso electoral

- **El procedimiento** (cómo, cuándo y dónde se vota): el objetivo con más impacto potencial y el más fácil de desmentir. Ejemplo: el clúster 014 del radar contiene un mensaje que llama a votar «el lunes 30» en una comisaría; el 29N es domingo 29. **Matiz**: el clúster 014 tiene 44 eventos y 6 autores y mezcla ese mensaje con política general; no es un clúster monotemático. Describirlo como «contiene un mensaje», no como «el clúster de».
- **La confianza en el recuento**: ataques narrativos al voto por correo, a las empresas adjudicatarias o al escrutinio.
- **La reputación de candidatos**: deepfakes, documentos falsos, hack-and-leak.
- **La percepción de apoyo**: encuestas falsas, cuentas de apariencia masiva (astroturfing).
- **La infraestructura**: ciberataques al censo, webs oficiales o sistemas de resultados. *(Rumanía: cifra de ciberataques pendiente de fuente primaria; no usar hasta cerrarla.)*

## B. Cronología aplicada: el ciclo electoral

- Rumanía 2024 → Alemania 2025 → Moldavia 2025 → **España 29N 2026**.
- Patrón: operaciones que se activan al convocarse las elecciones y se intensifican en las semanas previas.
- Caso español: generales de 2023 y piezas del SEAE; informe del Observatorio de Desinformación de la UCM. **Pendiente de revisar a fondo y enlazar.**

## C. Cómo se ve en los datos del radar (el hallazgo propio)

**Datos corregidos a 22-oct-2026 (tema `espana_elecciones`, 160 clústeres):**
- **H3 (operación extranjera) es la hipótesis dominante en 2 de 160 clústeres.**
- **H3 aparece con score ≥0,3 en 45 de 160** (como hipótesis secundaria, no dominante).
- **Atribución: UNKNOWN en 159/160; PROXY en 1.**
- Lo dominante es **sincronía doméstica (H2b) y campaña doméstica (H2)**; el eco de prensa (H4) también pesa.
- **Clúster 014**: score 71,06; 44 eventos; 6 autores; contiene el mensaje procedimental; NO_ATTRIBUTION.

**Tesis del post**: *lo que más se ve no es lo más peligroso*. El volumen y la sincronía doméstica dominan; la señal extranjera es minoritaria y no atribuible con los datos actuales. No convertir «H3 en 45» en «45 operaciones extranjeras»: es compatibilidad, no atribución.

## D. Precauciones (por actor)

- **Ciudadano**: contrastar fuente y fecha antes de compartir; para cómo votar, solo fuentes oficiales (JEC, Interior, BOE); desconfiar de lo que confirma lo que ya piensas; cuidado con vídeos virales sin contexto.
- **Medios y verificadores**: no atribuir sin evidencia; separar amplificación de coordinación; no amplificar el bulo al desmentirlo.
- **Partidos y candidatos**: protocolo de respuesta rápida a deepfakes propios; no amplificar sin comprobar.
- **Administración**: comunicación proactiva sobre procedimiento; canal único oficial; coordinación con el procedimiento nacional (Orden PCM/1030/2020) y con la red europea de alerta.

## E. Soluciones y límites

- Transparencia de plataformas, etiquetado de IA y trazabilidad de publicidad política (lo que busca el Escudo Europeo de la Democracia).
- Verificación independiente y alfabetización mediática.
- **Qué no funciona bien**: la anulación como herramienta rutinaria, la atribución sin pruebas, la censura preventiva.

## F. Cierre

- Qué vigilar los próximos días: procedimiento, voto por correo, recuento, deepfakes de candidatos, cuentas nuevas.
- Cómo seguir el radar: API, informes visuales, `cambios.xml`.
- Recordatorio editorial: **señal, no atribución**.

## Fuentes a cerrar antes de publicar
- [ ] Informe UCM sobre incidentes electorales (URL exacta).
- [ ] SEAE/23J (URL exacta).
- [ ] Rumanía: ciberataques/cuentas (solo si hay fuente primaria).
- [ ] JEC/Interior/BOE para el procedimiento del 29N.
- [ ] Escudo Europeo de la Democracia (URL exacta de la Comisión).
- [ ] Clúster 014: captura/ficha del radar para citar sin sacar de contexto.

*Nota: este esquema no se publica hasta cerrar las fuentes y redactarlo. La parte 1 sí está cerrada y lista para revisión.*
