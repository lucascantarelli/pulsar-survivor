# ISS-042 — Fila offline idempotente (Fase 4) — FECHADA 29/10

## Contexto
systems/backend.gd: outbox Array, queue_run dedup por run_id, ack atomico, conflict se payload diverge.
## Plano de teste
GUT: retry mesma chave 1 item; ack limpa.
## Prompt
Execute ISS-042.
