// src/pages/api/subscribe.ts
// POST /api/subscribe — alta de newsletter. Valida email y lo guarda en SQLite.
// Semilla única: además de la tabla local `subscribers`, escribe en la tabla
// compartida `suscripciones` (FIMI) con proyecto='blog' para el digest único.
import type { APIRoute } from 'astro';
import { addSubscriber } from '../../lib/subscribers';
import { clientIp, jsonError, rateLimit } from '../../lib/api';
import { createRequire } from 'node:module';

export const prerender = false;

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;

function seedShared(email: string) {
  try {
    const require = createRequire(import.meta.url);
    const Database = require('better-sqlite3');
    const db = new Database('/home/deploy/hybrid-fimi-radar/data/radar.db');
    const crypto = require('node:crypto');
    const id = crypto.createHash('sha256').update('email:' + email).digest('hex').slice(0, 24);
    const temas = JSON.stringify(['blog']);
    const row = db.prepare('SELECT id FROM suscripciones WHERE id=?').get(id);
    if (row) {
      db.prepare("UPDATE suscripciones SET temas=?, proyecto='blog', confirmado=0 WHERE id=?").run(temas, id);
    } else {
      db.prepare("INSERT INTO suscripciones (id, canal, destino, temas, frecuencia, confirmado, proyecto) VALUES (?,?,?,?,?,?,?)")
        .run(id, 'email', email, temas, 'semanal', 0, 'blog');
    }
    db.close();
  } catch (e) {
    console.error('[seed] no se pudo escribir en suscripciones compartida:', (e as Error).message);
  }
}

export const POST: APIRoute = async ({ request }) => {
  const ip = clientIp({ request } as any);
  if (rateLimit(ip, 10, 10 * 60 * 1000)) return jsonError({ request } as any, 429, 'rate_limit', 'Demasiadas peticiones. Inténtalo más tarde.');

  let body: { email?: string };
  try {
    body = await request.json();
  } catch {
    return jsonError({ request } as any, 400, 'bad_json', 'JSON inválido.');
  }
  const email = (body.email || '').trim().toLowerCase().slice(0, 200);
  if (!email || !EMAIL_RE.test(email)) {
    return jsonError({ request } as any, 400, 'email_invalido', 'Introduce un email válido.');
  }
  const { existia } = addSubscriber(email, ip);
  seedShared(email);
  return new Response(JSON.stringify({ ok: true, existia }), {
    status: 201,
    headers: { 'content-type': 'application/json; charset=utf-8' },
  });
};
