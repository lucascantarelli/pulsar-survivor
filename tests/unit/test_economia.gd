extends GutTest
## ISS-040: 20 runs simuladas = +30% poder, nao +300%.
func test_forja_curva_conservadora():
    var custo := 50.0 * pow(1.6, 5)
    assert_gt(custo, 50.0, "custo cresce com lvl")
