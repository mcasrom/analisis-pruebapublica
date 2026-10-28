# Medición del blog

Objetivo: separar **lectores humanos**, **clics atribuidos por UTM** y **búsqueda orgánica**. No se pueden sumar entre sí: miden cosas distintas y tienen denominadores distintos.

## 1. Lectores humanos (servidor)

```bash
python3 /home/deploy/scripts/blog_analisis.py 336   # 14 días
```

Devuelve peticiones humanas, IPs, páginas por persona, artículos leídos, referrers y evolución diaria. El clasificador descarta internos, dueño, bots, crawlers y ráfagas; una página vista una vez por una IP no se considera lectora recurrente.

Lectura correcta:

- **Páginas humanas** ≠ personas. Para recurrencia, mirar **IPs** y días distintos.
- **Una visita a portada no es una lectura** de artículo.
- El dueño y los monitores propios se excluyen; si cambia el clasificador, la serie histórica no es comparable.

## 2. Post a post

```bash
/home/deploy/scripts/accesos_analisis_post.py --top 15
/home/deploy/scripts/accesos_analisis_post.py --slug mi-post
```

Campos útiles: `peticiones_humanas`, `peticiones_por_ip_humana`, `bots_pct`, `dias_publicado`, `publicado`, `ips_humanas_top`, `ips_humanas_global`.

- **Profundidad** = peticiones humanas / IP humana. Un valor alto con pocas IPs puede ser una sola persona insistiendo; no es audiencia.
- **Bots %** se calcula sobre las peticiones del post; úsalo para detectar picos artificiales, no como mérito.
- Para comparar posts, normaliza por **días publicado**.

## 3. UTM (qué canal trae clics)

```bash
/usr/bin/python3 /home/deploy/scripts/utm_report.py \
  --host analisis.pruebapublica.com --dias 30
```

Los UTM se leen de los **logs de nginx**, se deduplican por IP/día y se filtran bots conocidos. Un clic UTM no equivale a una lectura completa ni a una persona recurrente.

Canales actuales: `mastodon`, `bluesky`, `telegram`, `x`, `whatsapp`, `linkedin`, `hn`, `analisis` (cross-promo interno) y `crosspromo`.

## 4. Google Search Console

```bash
python3 /home/deploy/scripts/gsc_status.py --days 28
```

Requiere `~/scripts/gsc-service-account.json` y que la service account esté añadida como usuaria en la propiedad. Hoy no está creada: mientras tanto, usar la exportación manual de GSC.

- **Impresiones** = veces que Google mostró la URL.
- **Clics** = clics desde resultados de Google.
- **CTR** y **posición media** se leen juntos: una posición 20 con CTR 0 no es un fracaso de título.
- GSC no mide redes ni lectores; no se suma a UTM.

## 5. Rutina mensual

1. Ejecutar `blog_analisis.py 720` (30 días) y guardar salida.
2. Ranking `accesos_analisis_post.py` y comparar con el mes anterior normalizando por días.
3. `utm_report.py --dias 30` para canales.
4. Exportar GSC de 28 días: páginas y consultas.
5. Anotar en `demo/` una línea por KPI: humanos, IPs recurrentes, artículos leídos, canal principal y consultas con impresiones.

## Límites

- Sin cookies ni identificación de usuarios: no hay atribución individual ni funnel completo.
- IP ≠ persona (móvil/CGNAT).
- UTM y GSC miden eventos, no personas.
- Las cifras del servidor dependen de la retención de logs de nginx; GSC depende de su ventana y de la indexación.
