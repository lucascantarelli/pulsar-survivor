extends GutTest
## ISS-040: Forja custo, Mastery, Reliquias.
func test_forja_cost_curve():
    var scr: GDScript = load("res://systems/meta.gd")
    var m: Node = scr.new()
    assert_eq(m.call("forja_cost", "vida"), 50, "lvl0 = 50")
    m.set("fragmentos", 10000)
    assert_true(bool(m.call("buy_forja", "vida")), "compra ok")
    assert_eq(int(m.get("fragmentos")), 10000 - 50, "descontou 50")
    m.free()
func test_mastery_drop():
    var scr2: GDScript = load("res://systems/meta.gd")
    var m2: Node = scr2.new()
    m2.set("mastery", 1)
    assert_almost_eq(float(m2.call("enemy_hp_mult")), 1.0, 0.001, "tier1 x1")
    assert_almost_eq(float(m2.call("drop_mult")), 1.0, 0.001, "drop x1")
    m2.free()
func test_reliquias_cap4():
    var scr3: GDScript = load("res://systems/meta.gd")
    var m3: Node = scr3.new()
    for r in ["a", "b", "c", "d"]:
        assert_true(bool(m3.call("equip_reliquia", r)), "slot " + r)
    assert_false(bool(m3.call("equip_reliquia", "e")), "5a bloqueada")
    m3.free()
