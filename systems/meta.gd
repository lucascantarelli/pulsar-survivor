extends Node
## ISS-040: Forja + Mastery Fenda I-X + Reliquias (4 slots). Numeros de economia-numeros.md.
const MAX_LVL := 20
const ATTRS := ["vida", "dano", "area", "armadura", "atracao"]
var forja: Dictionary = {"vida": 0, "dano": 0, "area": 0, "armadura": 0, "atracao": 0}
var fragmentos: int = 0
var mastery: int = 1
var reliquias: Array[String] = []
func forja_cost(attr: String) -> int:
    return int(50.0 * pow(1.6, float(forja.get(attr, 0))))
func buy_forja(attr: String) -> bool:
    if not forja.has(attr):
        return false
    if int(forja[attr]) >= MAX_LVL:
        return false
    var c := forja_cost(attr)
    if fragmentos < c:
        return false
    fragmentos -= c
    forja[attr] = int(forja[attr]) + 1
    return true
func enemy_hp_mult() -> float:
    return pow(1.15, float(mastery - 1))
func enemy_dmg_mult() -> float:
    return pow(1.15, float(mastery - 1))
func drop_mult() -> float:
    var m := pow(1.2, float(mastery - 1))
    if reliquias.has("ganancia"):
        m *= 1.25
    return m
func equip_reliquia(id: String) -> bool:
    if reliquias.has(id):
        return true
    if reliquias.size() >= 4:
        return false
    reliquias.append(id)
    return true
