---
name: qa-perf
description: Run survivor stress and legibility QA (FPS, draws, thermal, 2 devices). Use whenever profiling 500-1000 enemy hordes, checking VFX readability, or gating Fase DoD for Pulsar Survivor.
metadata:
  category: qa
  engine: godot-4
  project: pulsar-survivor
---
# QA Perf

## Knowledge
- Portões: 200 @60fps, 500 @30fps documentado, depois 1000 chunked. Device: intermediário 4-6GB + 1 low/high.
- Medir: FPS, draw calls, memória, temperatura 15min, crash. Legibilidade: 90% ameaças identificadas em playtest 5min. Ver `docs/referencia/performance-budgets.md`, `roadmap/ROADMAP.md`, `docs/issues/BACKLOG-ISSUES.md`.

## Instructions
1. Rodar cena stress no device mínimo, anexar relatório (não só "rodou bem").
2. Checar hierarquia VFX 4 camadas + slow-mo level-up; projétil inimigo sempre por cima.
3. Barrar regressão: FPS -10% vs baseline, overdraw >30 transparências, draws estourando budget.
4. Entregar blocker list por Fase DoD, sem editar código — só relatórios.
