# Rúbrica editorial del blog de análisis

**Fecha:** 2026-11-02  
**Ámbito:** posts de análisis con afirmaciones sobre política, geopolítica, elecciones, desinformación o datos.  
**No se aplica** a fábulas, ensayos de método sin afirmaciones factuales ni páginas de servicio.

## Para qué sirve

La auditoría técnica (`blog-audit.py`) mide forma: título, metadatos, fuentes, imágenes, enlaces y series. Esta rúbrica mide **calidad analítica**. No se suma a los 100 puntos técnicos ni se calcula automáticamente.

## Cinco criterios

| Criterio | 0 | 1 | 2 |
|---|---|---|---|
| **Tesis** | No hay idea central | Idea difusa o varias tesis | Una tesis clara y defendible |
| **Evidencia** | Afirmaciones sin fuente | Fuentes parciales o secundarias | Fuentes suficientes, pertinentes y enlazadas |
| **Contraste** | Solo una versión | Se menciona otra sin desarrollarla | Se comparan explicaciones alternativas |
| **Causalidad** | Confunde correlación con causa | Riesgo de confusión | Distingue correlación, mecanismo y prueba |
| **Conclusiones** | Exceden las pruebas | Ajustadas pero imprecisas | Limitadas a lo demostrado |

**Máximo: 10 puntos.** No se convierte a porcentaje ni se mezcla con la nota técnica.

## Regla de evidencia

- Una fuente primaria acredita lo que dice el actor; no confirma el hecho por sí sola.
- Varios medios que repiten la misma pieza no son varias fuentes independientes.
- No se exige una bibliografía por párrafo. Se exige que las afirmaciones relevantes tengan soporte.
- Una hipótesis se etiqueta como hipótesis; una ausencia de prueba no se convierte en prueba de lo contrario.

## Cómo se registra

En el frontmatter del post:

```yaml
auditoria_editorial:
  fecha: 2026-11-02
  tesis: 2
  evidencia: 2
  contraste: 2
  causalidad: 2
  conclusiones: 2
```

La nota se calcula como suma de los cinco campos. No se guarda una nota separada para evitar que diverja.

## Cuándo se revisa

- **Obligatorio:** análisis nuevos antes de publicar.
- **Muestra:** cinco posts antiguos de mayor tráfico o más citados.
- **No retroactivo:** no se revisan los 37 antiguos de golpe.
- **Fábulas:** quedan fuera; tienen contrato narrativo propio.

## Criterio de uso

- La rúbrica no decide si se publica; detecta carencias.
- Un 10/10 no significa que la tesis sea verdadera: significa que está bien delimitada y sostenida.
- Un 5/10 puede ser correcto si el género no exige más.
- Si una pieza no puede pasar de 6/10 sin convertirse en otro artículo, se publica con sus límites, no se disfraza.
