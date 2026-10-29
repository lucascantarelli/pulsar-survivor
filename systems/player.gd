extends CharacterBody3D
## ISS-010/011: player top-down, input abstraido acao move.
@export var speed: float = 6.0
var touch_dir: Vector2 = Vector2.ZERO
func _physics_process(delta: float) -> void:
    var iv := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
    var dir := iv
    if dir == Vector2.ZERO:
        dir = touch_dir
    var v := Vector3(dir.x, 0.0, dir.y) * speed
    velocity.x = v.x
    velocity.z = v.z
    velocity.y = 0.0
    move_and_slide()
