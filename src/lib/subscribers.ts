// src/lib/subscribers.ts
// Newsletter: suscripciones por email almacenadas localmente (SQLite).
// Sin servicios externos. Tabla: subscribers (id, email, ip, confirmado,
// fecha). Doble opt-in: alta con confirmado=0; se confirma vía /api/confirm.
import { getDb } from './db';
import crypto from 'node:crypto';

getDb().exec(`
  CREATE TABLE IF NOT EXISTS subscribers (
    id TEXT PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    ip TEXT,
    confirmado INTEGER NOT NULL DEFAULT 0,
    fecha TEXT NOT NULL
  );
`);

export function addSubscriber(email: string, ip: string): { id: string; fecha: string; existia: boolean } {
  const fecha = new Date().toISOString();
  const normalized = email.toLowerCase();
  const exists = getDb().prepare('SELECT id FROM subscribers WHERE email = ?').get(normalized) as
    | { id: string }
    | undefined;
  if (exists) return { id: exists.id, fecha, existia: true };
  const id = crypto.randomUUID();
  getDb()
    .prepare('INSERT INTO subscribers (id, email, ip, confirmado, fecha) VALUES (?,?,?,0,?)')
    .run(id, normalized, ip || null, fecha);
  return { id, fecha, existia: false };
}

export function confirmSubscriber(id: string): boolean {
  const r = getDb().prepare('UPDATE subscribers SET confirmado = 1 WHERE id = ?').run(id);
  return r.changes > 0;
}

export function unsubscribeSubscriber(id: string): boolean {
  const r = getDb().prepare('UPDATE subscribers SET confirmado = 0 WHERE id = ?').run(id);
  return r.changes > 0;
}

export function listSubscribers(): Array<{ id: string; email: string; ip: string | null; confirmado: number; fecha: string }> {
  return getDb()
    .prepare('SELECT id, email, ip, confirmado, fecha FROM subscribers ORDER BY fecha DESC')
    .all() as Array<{ id: string; email: string; ip: string | null; confirmado: number; fecha: string }>;
}

export function countSubscribers(): number {
  const row = getDb().prepare('SELECT COUNT(*) AS n FROM subscribers').get() as { n: number };
  return row.n;
}
