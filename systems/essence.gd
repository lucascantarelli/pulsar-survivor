extends Area3D
## ISS-012: Essencia coleta por magnetismo simples.
signal collected
@export var value: int = 1
func _ready() -> void:
    body_entered.connect(_on_body)
func _on_body(_b: Node) -> void:
    collected.emit()
    queue_free()
