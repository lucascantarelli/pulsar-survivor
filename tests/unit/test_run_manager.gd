extends GutTest
## ISS-031/032: sinergias 2x2 e numeros.
func test_synergies():
    var scr: GDScript = load("res://systems/run_manager.gd")
    var m: Node = scr.new()
    m.raca_id = "raca_khemri"
    m.classe_id = "classe_geo"
    assert_eq(m.synergy_id(), "sepulcro_fractal", "khemri+geo")
    m.raca_id = "raca_var"
    m.classe_id = "classe_cantora"
    assert_eq(m.synergy_id(), "coro_sismico", "var+cantora")
    assert_almost_eq(m.damage_mult(), 1.10, 0.001, "var +10pct")
    m.free()
func test_load_combo():
    var scr2: GDScript = load("res://systems/run_manager.gd")
    var m2: Node = scr2.new()
    var ok: bool = m2.load_combo("res://content/racas/khemri_cinzenta.tres", "res://content/classes/geometrista_cinzas.tres")
    assert_true(ok, "load combo ok")
    assert_eq(m2.synergy_id(), "sepulcro_fractal", "sinergia apos load")
    m2.free()
