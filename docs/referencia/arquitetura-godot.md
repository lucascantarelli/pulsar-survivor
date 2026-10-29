# Arquitetura Godot 4 — Referência

Pastas: `scenes/` (main, player, enemy, vfx), `systems/` (spawner, wave, save, backend, audio), `content/` (racas, classes, reliquias .tres), `ui/`.
Autoloads: Game, RunDB, Save, Backend.
Recursos: BaseRaca, BaseClasse, Evolucao, Reliquia (Resource com passiva/ativa/evolução).
Convenções: GDScript snake_case, sinais para level_up/morte, sem lógica em _process de inimigo individual (sistema central).
Versionamento: `main<-develop<-feat/*`, Git LFS para .glb/.png/.wav.
CI: exporta Windows EXE + Android AAB por tag.
Save v1: device_id + timestamp, unlocks só-adicionam, moeda premium só do servidor. Merge: unlocks unem, moeda do servidor, resto last-write com aviso.
