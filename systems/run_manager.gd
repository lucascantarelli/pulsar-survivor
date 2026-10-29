extends Node
## ISS-031/032: aplica BaseRaca + BaseClasse, calcula stats e sinergia hibrida.
var raca_id: String = "raca_khemri"
var classe_id: String = "classe_geo"
var raca: Resource
var classe: Resource
func combo_id() -> String:
    return raca_id + "+" + classe_id
func synergy_id() -> String:
    var c := combo_id()
    if c == "raca_khemri+classe_geo":
        return "sepulcro_fractal"
    if c == "raca_khemri+classe_cantora":
        return "lamento_polar"
    if c == "raca_var+classe_geo":
        return "mare_geometrica"
    if c == "raca_var+classe_cantora":
        return "coro_sismico"
    return "nenhuma"
func load_combo(r_path: String, c_path: String) -> bool:
    raca = load(r_path)
    classe = load(c_path)
    if raca == null or classe == null:
        return false
    raca_id = str(raca.get("id"))
    classe_id = str(classe.get("id"))
    return true
func damage_mult() -> float:
    var m := 1.0
    if raca_id == "raca_var":
        m *= 1.10
    return m
