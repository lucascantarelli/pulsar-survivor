extends GutTest
## ISS-042: outbox idempotente.
func test_queue_idempotent():
    var scr: GDScript = load("res://systems/backend.gd")
    var b: Node = scr.new()
    assert_eq(str(b.call("queue_run", {"run_id": "r1"})), "r1", "fila r1")
    assert_eq(str(b.call("queue_run", {"run_id": "r1"})), "r1", "retry mesma chave nao duplica")
    assert_eq((b.get("outbox") as Array).size(), 1, "1 item")
    var ack1: Dictionary = b.call("ack", "r1", {})
    assert_true(bool(ack1.get("ok")), "ack ok")
    assert_eq((b.get("outbox") as Array).size(), 0, "fila limpa")
    b.free()
