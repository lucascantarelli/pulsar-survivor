# ADR-0004 — Supabase server-authoritative

- Status: aceito. Data: 2026-10.
- Contexto: save AES nao impede cheat; ranking exige servidor.
- Decisao: Edge valida run_result, so ela escreve leaderboard/Cristais; fila offline com run_id idempotente; RLS.
