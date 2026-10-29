extends Node
## ISS-041 client: validacao local + POST p/ Edge. URL/key via configure() (ProjectSettings ou .env local), nunca hardcoded.
const EDGE_PATH := "/functions/v1/submit-score"
const MAX_SCORE := 100000000
const MAX_KILLS := 1000000
const MAX_TIME_MS := 7200000
const MAX_KILLS_PER_MIN := 2000.0
var base_url: String = ""
var anon_key: String = ""
var jwt: String = ""
func configure(url: String, key: String) -> void:
    base_url = url
    anon_key = key
func validate_run(score: int, kills: int, time_ms: int) -> Dictionary:
    if score < 0 or score > MAX_SCORE:
        return {"ok": false, "error": "bad-score"}
    if kills < 0 or kills > MAX_KILLS:
        return {"ok": false, "error": "bad-kills"}
    if time_ms < 0 or time_ms > MAX_TIME_MS:
        return {"ok": false, "error": "bad-time"}
    var mins := maxf(float(time_ms) / 60000.0, 1.0 / 60.0)
    if float(kills) / mins > MAX_KILLS_PER_MIN:
        return {"ok": false, "error": "impossible"}
    return {"ok": true}
func build_payload(run_id: String, score: int, kills: int, time_ms: int, difficulty: String) -> Dictionary:
    return {"run_id": run_id, "score": score, "kills": kills, "time_ms": time_ms, "difficulty": difficulty}
