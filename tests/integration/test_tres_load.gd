extends GutTest
## ISS-030: os 4 .tres abrem e tem script_class Base.
func test_tres_load():
    var paths := ["res://content/racas/khemri_cinzenta.tres", "res://content/racas/var_brjost.tres", "res://content/classes/geometrista_cinzas.tres", "res://content/classes/cantora_fenda.tres"]
    for p in paths:
        var r: Resource = load(p)
        assert_not_null(r, "carrega " + p)
        assert_true(str(r.get("id")).length() > 0, "id em " + p)
