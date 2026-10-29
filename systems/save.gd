extends Node
## Save Fase 0 ISS-002: ConfigFile AES-256. Nao e autoridade de ranking.
const PATH := "user://save.cfg"
var _key := "trocar-por-chave-32-bytes-gerada-no-device".to_utf8_buffer()
func save_progress(data: Dictionary) -> int:
    var cfg := ConfigFile.new()
    for k in data.keys():
        cfg.set_value("save", str(k), data[k])
    return cfg.save_encrypted(PATH, _key)
func load_progress() -> Dictionary:
    var cfg := ConfigFile.new()
    var err := cfg.load_encrypted(PATH, _key)
    if err != OK:
        return {}
    var out := {}
    for k in cfg.get_section_keys("save"):
        out[k] = cfg.get_value("save", k)
    return out
