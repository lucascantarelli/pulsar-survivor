extends GutTest
## ISS-011: acao move existe e Input.get_vector responde.
func test_move_actions_exist():
    assert_true(InputMap.has_action("move_left"), "move_left existe")
    assert_true(InputMap.has_action("move_right"), "move_right existe")
    assert_true(InputMap.has_action("move_forward"), "move_forward existe")
    assert_true(InputMap.has_action("move_back"), "move_back existe")
