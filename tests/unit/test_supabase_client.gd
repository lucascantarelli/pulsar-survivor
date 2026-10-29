extends GutTest
## ISS-041 client: validacao local espelha o Edge.
func test_validate_ok():
    var scr: GDScript = load("res://systems/supabase_client.gd")
    var c: Node = scr.new()
    assert_true(bool((c.call("validate_run", 100, 10, 60000) as Dictionary).get("ok")), "run normal ok")
    c.free()
func test_validate_rejects():
    var scr2: GDScript = load("res://systems/supabase_client.gd")
    var c2: Node = scr2.new()
    assert_eq(String((c2.call("validate_run", -1, 0, 0) as Dictionary).get("error")), "bad-score", "score negativo")
    assert_eq(String((c2.call("validate_run", 0, 100000, 60000) as Dictionary).get("error")), "impossible", "100k/min impossivel")
    c2.free()
