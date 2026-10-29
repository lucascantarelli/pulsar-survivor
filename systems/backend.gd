extends Node
## ISS-041/042: outbox offline idempotente + esqueleto Supabase (chaves via ProjectSettings, nunca no codigo).
signal acknowledged(run_id: String)
var outbox: Array[Dictionary] = []
var _seen: Dictionary = {}
func queue_run(payload: Dictionary) -> String:
    var run_id := str(payload.get("run_id", ""))
    if run_id.is_empty():
        return ""
    for o in outbox:
        if str(o.get("run_id")) == run_id:
            return run_id
    outbox.append(payload)
    return run_id
func ack(run_id: String, response: Dictionary) -> Dictionary:
    if _seen.has(run_id):
        return _seen[run_id]
    var stored := {}
    for o in outbox:
        if str(o.get("run_id")) == run_id:
            stored = o
            break
    if stored.is_empty():
        return {"ok": false, "error": "unknown-run"}
    if str(stored.get("payload")) != str(response.get("payload", stored.get("payload"))):
        return {"ok": false, "error": "conflict"}
    _seen[run_id] = {"ok": true, "run_id": run_id}
    outbox = outbox.filter(func(o): return str(o.get("run_id")) != run_id)
    acknowledged.emit(run_id)
    return _seen[run_id]
