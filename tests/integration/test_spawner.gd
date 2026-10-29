extends GutTest
## ISS-021: spawner instancia sem player sem crash.
func test_spawner_ready_no_player():
    var s: Node3D = load("res://systems/spawner.gd").new()
    add_child(s)
    await get_tree().process_frame
    assert_true(s._mm.multimesh.instance_count == 1000, "multimesh 1000")
    s.queue_free()
    await get_tree().process_frame
