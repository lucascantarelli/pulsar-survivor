extends Node
## Save Fase 0 ISS-002: ConfigFile AES-256. Nao e autoridade de ranking (ver backend-integrator).
const PATH := "user://save.cfg"
func _key32() -> PackedByteArray:
    var seed := OS.get_unique_id()
    if seed.is_empty():
        seed = "pulsar-survivor-local-fallback-key"
    return seed.sha256_buffer()
func save_progress(data: Dictionary) -> int:
    var cfg := ConfigFile.new()
    for k in data.keys():
        cfg.set_value("save", str(k), data[k])
    return cfg.save_encrypted(PATH, _key32())
func load_progress() -> Dictionary:
    var cfg := ConfigFile.new()
    var err := cfg.load_encrypted(PATH, _key32())
    if err != OK:
        return {}
    var out := {}
    for k in cfg.get_section_keys("save"):
        out[k] = cfg.get_value("save", k)
    return out
