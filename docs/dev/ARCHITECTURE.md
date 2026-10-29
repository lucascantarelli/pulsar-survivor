# Architecture (Godot 4)

Pastas: scenes/, systems/ (spawner central, save, backend, audio), content/ (BaseRaca/BaseClasse .tres), ui/.
Autoloads: Game, RunDB, Save, Backend. Resources para dados; cenas para comportamento; sinais para eventos.
Regra: systems importam content; content nao importa systems. Nenhum _process por inimigo.
Limites: cena player < 300 linhas; sistema spawner centralizado; 1 material/inimigo.
