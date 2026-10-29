extends Camera3D
## ISS-010: smooth follow 12-16m, 45-55 graus, zoom-out por intensidade.
@export var target_path: NodePath
@export var distance: float = 14.0
@export var angle_deg: float = 50.0
var _t: Node3D
func _ready() -> void:
    _t = get_node_or_null(target_path) as Node3D
    var a := deg_to_rad(angle_deg)
    transform.origin = Vector3(0, distance * sin(a), distance * cos(a))
    rotation_degrees = Vector3(-angle_deg, 0, 0)
func _process(delta: float) -> void:
    if _t == null:
        return
    var a := deg_to_rad(angle_deg)
    var want := _t.global_position + Vector3(0, distance * sin(a), distance * cos(a))
    global_position = global_position.lerp(want, 1.0 - exp(-6.0 * delta))
