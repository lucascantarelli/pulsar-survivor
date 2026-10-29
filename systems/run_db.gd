extends Node
## RunDB Fase 0: unlocks so-adicionam; moeda premium so do servidor.
var unlocks: Array[String] = []
func add_unlock(id: String) -> void:
    if not unlocks.has(id):
        unlocks.append(id)
