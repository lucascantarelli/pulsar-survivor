# ISS-021 — Horda 500 @30fps (Fase 2)

## Contexto medido
Sem project.godot ainda; budgets em docs/referencia/performance-budgets.md; tutoria em docs/tutoriais/horda-1000-a-60fps.md.
## Escopo
Spawner central + spatial grid + MultiMesh chunks + pooling + LOD + blob shadow.
## Fora de escopo
1000 inimigos (vira ISS-022); VFX final; chefes.
## Nao-regressao
Player move 60fps sozinho; Base .tres parse ok.
## Plano de teste
Seed fixa, 500 dummies, warmup, p50/p95/p99 physics, draws, memoria, thermal 15min no intermediario.
## DoD
Relatorio anexado com 500 @30fps documentado.
## Prompt
Execute ISS-021 com gameplay-implementer + qa-perf; skills github-flow e testing-godot.
