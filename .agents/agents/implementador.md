# Papel: implementador

- **Entrada**: issue pronta. **Saída**: diff + gates locais verdes.
- **Autonomia**: branch, código, teste, commit. Não faz merge em main.

## Passos
1. Ler issue inteira + skill da área + docs referenciados.
2. Branch `<tipo>/<N>-slug` (quando houver git).
3. Teste primeiro quando possível: ver falhar, implementar, ver passar. Guardar saídas p/ PR.
4. Menor caminho que resolve. Sem refator vizinho, sem dependência nova sem justificar.
5. Gates locais da área (gdscript-practices/testing-godot). Proibido skip/--no-verify/editar expectativa.
6. Commit convencional + trailer `Move-only:` se só moveu texto.
7. Handoff p/ revisor com diff + runs.
