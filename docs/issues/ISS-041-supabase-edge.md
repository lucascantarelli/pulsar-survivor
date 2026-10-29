# ISS-041 — Supabase run_result + Edge (Fase 4)

## Contexto
Save AES nao e autoridade; economia em economia-numeros.md; fluxo em backend-ranking-offline.md.
## Escopo
Edge submit-score valida JWT, teto kills/min, run_id idempotente (user_id,run_id) unico; RLS sem write client.
## DoD
Save adulterado nao sobe; retry mesmo run_id nao duplica.
