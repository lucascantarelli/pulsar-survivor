---
name: gdscript-practices
description: Boas praticas GDScript Godot 4 (tabs, snake_case, sinais no passado, tipos em API publica, Resources, sem _process por inimigo). Use ao escrever ou revisar qualquer GDScript do Pulsar Survivor.
metadata:
  category: development
  engine: godot-4
---
# Boas praticas GDScript

Estilo: tabs, snake_case arquivos/funcs/vars/sinais, PascalCase classes, CONSTANT_CASE consts. Sinais no passado (health_changed). @onready tipado, sem get_node repetido.
Tipos: parametrize retornos e fields; := quando obvio; Array tipado; as com checagem de null.
Autoloads so p/ sistemas amplos (Save, Backend). Resources p/ dados (BaseRaca/BaseClasse). Sinais p/ desacoplar cena.
Perf: sem _process por inimigo; centralizar em arrays + spatial grid; MultiMesh por chunks; pooling seletivo; set_process(false) quando ocioso; profile no device.
