---
name: gameplay-implementer
description: Implement Godot 4 survivor gameplay (player, spawner, hordes, Raça/Classe Resources). Use whenever implementing movement, camera, MultiMesh hordes, pooling, or BaseRaca/BaseClasse logic for Pulsar Survivor.
metadata:
  category: gameplay
  engine: godot-4
  project: pulsar-survivor
---
# Gameplay Implementer

## Knowledge
- Stack: Godot 4 Compatibility/Mobile, GDScript snake_case, top-down 45-55° 12-16m smooth follow.
- Device alvo: intermediário 4-6GB. Metas: 200 dummies @60fps, 500 @30fps, depois 1000.
- Arquitetura: `scenes/`, `systems/` (spawner central, sem _process por inimigo), `content/` BaseRaca/BaseClasse .tres, autoloads Game/RunDB/Save/Backend.
- Docs: `docs/visao/GDD-resumido.md`, `docs/referencia/arquitetura-godot.md`, `docs/referencia/performance-budgets.md`, `docs/tutoriais/primeira-run-jogavel.md`, `docs/tutoriais/horda-1000-a-60fps.md`.

## Instructions
1. Ler GDD + arquitetura + budgets antes de codar.
2. Simulação central em arrays + spatial grid; MultiMeshInstance3D por chunks (culled juntos); pooling projéteis/pickups/VFX; LOD + blob shadow, 1 material/inimigo, máx 2 luzes reais.
3. Input abstraído: mesma ação `move` para joystick virtual + WASD/mouse; auto-mira mobile.
4. Raça/Classe só via Resource BaseRaca/BaseClasse (`script_class="BaseRaca"` / `"BaseClasse"`); nunca hardcode números — ler de .tres.
5. Entregar com teste stress: FPS, draws, memória, thermal 15min no intermediário. Barrar se FPS cair >10% vs baseline.
