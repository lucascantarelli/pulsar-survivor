# ISS-041 — Supabase run_result + Edge + RLS (Fase 4) — ESQUELETO OK, deploy pendente

## Contexto
backend/schema.sql RLS leitura; Edge submit-score valida JWT + teto kills/min + upsert (user_id,run_id).
## Escopo restante
Plugar URL + publishable (nunca service_role no repo); deploy Edge; teste cheat (save adulterado nao sobe).
## Plano de teste
RLS deny write anon; Edge rejeita sem JWT; retry mesma chave nao duplica.
## Prompt
Execute ISS-041 com backend-integrator quando chaves chegarem.
