extends GutTest
## ISS-012: Essencia tem sinal collected e valor default.
func test_essence_defaults():
    var scr: GDScript = load("res://systems/essence.gd")
    var e: Area3D = scr.new()
    assert_true(e.has_signal("collected"), "collected existe")
    assert_eq(int(e.get("value")), 1, "valor default 1")
    e.free()
