# ISS-002 — Save AES-256 + merge PC/mobile (Fase 0) — FECHADA 29/10

## Contexto
systems/save.gd usa ConfigFile.save_encrypted com chave OS.get_unique_id().sha256 (32 bytes).
## Escopo
save/load progress; RunDB unlocks so-adicionam; moeda premium so servidor.
## Nao-regressao
Save nao e autoridade de ranking (ver backend-integrator).
## Plano de teste
Parse + roundtrip: save depois load devolve igual.
## Prompt
Execute ISS-002; teste save/load.
