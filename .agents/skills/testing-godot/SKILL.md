---
name: testing-godot
description: Onde cada teste Godot vive (unit tests/unit, integration tests/integration, perf tests/perf) com GUT/GdUnit4 e gates de stress 500-1000. Use ao escrever, revisar ou diagnosticar teste do Pulsar Survivor.
metadata:
  category: quality
  engine: godot-4
---
# Testes Godot

unit/: logica pura (dano, spawn rules, economia). integration/: cenas, sinais, save/load. perf/: benchmarks com seed fixa, rodar separado.
GUT: godot headless import + gut_cmdln com gdir, ginclude_subdirs, gexit, junit xml. Travar versao GUT com versao do Godot.
Perf: 500/750/1000 inimigos, warmup, p50/p95/p99 physics/process, draws, memoria, orfaos. Headless vale p/ logica; GPU exige build com janela.
