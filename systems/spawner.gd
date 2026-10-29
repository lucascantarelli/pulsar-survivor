extends Node3D
## ISS-020/021: spawner central + spatial grid + MultiMesh (1 material, sem _process por inimigo).
@export var max_enemies: int = 1000
@export var spawn_per_sec: float = 30.0
@export var enemy_speed: float = 2.5
@export var cell_size: float = 4.0
var _pos: PackedVector3Array = PackedVector3Array()
var _hp: PackedInt32Array = PackedInt32Array()
var _grid: Dictionary = {}
var _mm: MultiMeshInstance3D
var _accum: float = 0.0
var player: Node3D
func _ready() -> void:
    var mm := MultiMesh.new()
    mm.transform_format = MultiMesh.TRANSFORM_3D
    mm.mesh = BoxMesh.new()
    mm.instance_count = max_enemies
    _mm = MultiMeshInstance3D.new()
    _mm.multimesh = mm
    add_child(_mm)
    for i in max_enemies:
        _mm.multimesh.set_instance_transform(i, Transform3D.IDENTITY.scaled(Vector3.ZERO))
func cell_of(p: Vector3) -> Vector2i:
    return Vector2i(int(floor(p.x / cell_size)), int(floor(p.z / cell_size)))
func spawn_rule(count: int, bounds: float) -> PackedVector3Array:
    var out := PackedVector3Array()
    for i in count:
        var a := randf() * TAU
        out.append(Vector3(cos(a) * bounds, 0.0, sin(a) * bounds))
    return out
func _physics_process(delta: float) -> void:
    if player == null:
        player = get_tree().get_first_node_in_group("player") as Node3D
        if player == null:
            return
    _accum += delta * spawn_per_sec
    while _accum >= 1.0 and _pos.size() < max_enemies:
        _accum -= 1.0
        var a := randf() * TAU
        _pos.append(player.global_position + Vector3(cos(a) * 18.0, 0.0, sin(a) * 18.0))
        _hp.append(3)
    _grid.clear()
    var pp := player.global_position
    for i in _pos.size():
        var d := pp - _pos[i]
        d.y = 0.0
        var dist := d.length()
        if dist > 0.01:
            _pos[i] += d / dist * enemy_speed * delta
        var c := cell_of(_pos[i])
        if not _grid.has(c):
            _grid[c] = []
        (_grid[c] as Array).append(i)
        var t := Transform3D(Basis(), _pos[i])
        _mm.multimesh.set_instance_transform(i, t)
    for j in range(_pos.size(), max_enemies):
        _mm.multimesh.set_instance_transform(j, Transform3D.IDENTITY.scaled(Vector3.ZERO))
