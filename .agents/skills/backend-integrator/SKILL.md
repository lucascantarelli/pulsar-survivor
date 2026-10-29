---
name: backend-integrator
description: Integrate Supabase ranking and meta-progression with offline-first saves (RLS, Edge validation). Use whenever wiring run_result, leaderboards, Forja/Mastery persistence, or encrypted local saves for Pulsar Survivor.
metadata:
  category: backend
  service: supabase
  project: pulsar-survivor
---
# Backend Integrator

## Knowledge
- Supabase Free: 50k MAU, 500MB DB. Client: HTTPRequest GDScript, chave publishable; secret só server. RLS: user só lê/escreve próprio perfil, ranking via função.
- Fluxo: client manda `run_result{tempo,kills,seed,hash,dificuldade}`, Edge Function valida (teto kills/min) e só ela escreve leaderboard/Cristais. Ver `docs/how-to/backend-ranking-offline.md`, `docs/referencia/economia-numeros.md`.
- Save local AES-256 via FileAccess é conveniência, não anti-cheat. Merge: unlocks unem, moeda do servidor, resto last-write com aviso.

## Instructions
1. Nunca confiar no client para score/moeda premium.
2. Fila offline com ID idempotente; sincroniza sem duplicar Fragmentos.
3. Teste cheat obrigatório: save adulterado não sobe ranking.
4. Documentar tabelas, RLS e Edge em `systems/backend/`.
