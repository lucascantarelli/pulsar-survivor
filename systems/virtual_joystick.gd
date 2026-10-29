extends Control
## ISS-011: joystick virtual dinamico -> escreve player.touch_dir.
@export var player_path: NodePath
var _p: Node
var _active := false
var _origin := Vector2.ZERO
func _ready() -> void:
    _p = get_node_or_null(player_path)
func _gui_input(event: InputEvent) -> void:
    if event is InputEventScreenTouch:
        _active = event.pressed
        _origin = event.position
        if not _active and _p != null:
            _p.set("touch_dir", Vector2.ZERO)
    elif event is InputEventScreenDrag and _active and _p != null:
        var d := (event.position - _origin) / 64.0
        _p.set("touch_dir", d.limit_length(1.0))
