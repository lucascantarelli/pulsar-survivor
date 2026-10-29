extends GutTest
## ISS-020: spawn rules e grid.
func test_spawn_rule_count_and_radius():
    var scr: GDScript = load("res://systems/spawner.gd")
    var s: Node3D = scr.new()
    var pts: PackedVector3Array = s.spawn_rule(10, 18.0)
    assert_eq(pts.size(), 10, "10 spawns")
    for p in pts:
        assert_almost_eq(Vector2(p.x, p.z).length(), 18.0, 0.01, "na borda 18m")
    s.free()
func test_cell_of():
    var scr2: GDScript = load("res://systems/spawner.gd")
    var s2: Node3D = scr2.new()
    s2.set("cell_size", 4.0)
    var c: Vector2i = s2.call("cell_of", Vector3(5, 0, 9))
    assert_eq(c, Vector2i(1, 2), "celula correta")
    s2.free()
