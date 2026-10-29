# ISS-020 — Spawner + spatial grid (Fase 2) — FECHADA 29/10

## Contexto
systems/spawner.gd: arrays PackedVector3/Int32, _grid Dictionary cell 4m, sem _process por inimigo.
## Escopo
spawn_rule borda 18m; cell_of; update central no _physics_process.
## Nao-regressao
Player move 60fps sozinho.
## Plano de teste
GUT: 10 spawns na borda, celula (5,9)=(1,2).
## Prompt
Execute ISS-020 com gameplay-implementer.
