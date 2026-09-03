// src/pages/api/subscribe.ts
// POST /api/subscribe — alta de newsletter. Valida email y lo guarda en SQLite.
import type { APIRoute } from 'astro';
import { addSubscriber } from '../../lib/subscribers';
import { clientIp, jsonError, rateLimit } from '../../lib/api';

export const prerender = false;

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;

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
  return new Response(JSON.stringify({ ok: true, existia }), {
    status: 201,
    headers: { 'content-type': 'application/json; charset=utf-8' },
  });
};
