# Backlog Issues — Pulsar Survivor (pronto p/ GitHub Projects)

Formato: `ID | Fase | Título | DoD`. Criar 1 issue por linha ao abrir o repo.

## Fase 0 Fundação
- ISS-001 | F0 | Criar project.godot Compatibility + presets Android/PC | abre sem erro, exporta AAB+EXE vazio
- ISS-002 | F0 | Save local AES-256 + merge PC/mobile | offline persiste, merge une unlocks
- ISS-003 | F0 | Cena stress 200 dummies + relatório FPS | 60fps intermediário documentado

## Fase 1 Core
- ISS-010 | F1 | Player top-down + câmera smooth 12-16m | move 2min sem atravessar parede
- ISS-011 | F1 | Input abstraído joystick + WASD/mouse | mesma ação `move`
- ISS-012 | F1 | Auto-mira + pickup Essência | coleta conta XP

## Fase 2 Horda
- ISS-020 | F2 | Spawner + spatial grid centralizado | sem _process por inimigo
- ISS-021 | F2 | MultiMesh chunked + pooling | 500 @30fps relatório
- ISS-022 | F2 | LOD + blob shadow + 1 material | draws estáveis

## Fase 3 Conteúdo
- ISS-030 | F3 | Validar BaseRaca/BaseClasse .tres no Godot | 4 fichas abrem sem parse error
- ISS-031 | F3 | Implementar passivas/ativas 2x2 | funciona em run 5min
- ISS-032 | F3 | 4 sinergias híbridas | mutação visual + efeito único
- ISS-033 | F3 | Escala 10x10 (só após 032) | 100 fichas com budget

## Fase 4 Meta/Backend
- ISS-040 | F4 | Forja + Mastery I-X + Relíquias | 20 runs = +30% poder
- ISS-041 | F4 | Supabase run_result + Edge validação + RLS | cheat não sobe
- ISS-042 | F4 | Fila offline idempotente | sem duplicar Fragmentos
- ISS-043 | F4 | Passe 60d + loja cosmética + ad pós-run | sem paywall poder

## Fase 5 Slice
- ISS-050 | F5 | Mapa floresta + chefes 5/10/15 | run 15min completa
- ISS-051 | F5 | Hierarquia VFX 4 camadas + slow-mo level-up | playtest 90% legibilidade
- ISS-052 | F5 | Mix áudio base + QA 2 devices | relatório thermal 15min

## Fase 0 — ✅ fechada 29/10 (modo ausente)
ISS-001 project.godot + presets: OK (import exit 0). ISS-002 save AES + RunDB: OK (testado parse, runtime pendente device). ISS-003 stress + GUT 2/2 verde: OK.

## Fase 1 — ✅ fechada 29/10 (modo ausente)
ISS-010 player + camera 14m/50graus: OK. ISS-011 input move + joystick: OK (4/4 verde). ISS-012 essence collected: OK.
