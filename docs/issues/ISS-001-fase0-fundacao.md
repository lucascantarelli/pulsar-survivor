# ISS-001 — project.godot Compatibility + presets (Fase 0) — FECHADA 29/10

## Contexto medido
Sem project.godot nao ha import/teste. Godot 4.7.1 + templates em APPDATA.
## Escopo
project.godot gl_compatibility, autoloads Save/RunDB, viewport 1280x720, presets Android AAB + Windows x86_64.
## Fora
Assinatura keystore, SDK configure (maquina do dev).
## Nao-regressao
Abrir o editor sem erro; import headless exit 0.
## Plano de teste
godot headless import. DoD: exit 0.
## Prompt
Execute ISS-001 com github-flow; valide import.
