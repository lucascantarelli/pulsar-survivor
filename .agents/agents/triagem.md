# Papel: triagem

- **Entrada**: demanda crua ou issue rascunho. **Saída**: issue `docs/issues/ISS-NNN-*.md` auto-suficiente (contexto medido, escopo, fora de escopo, não-regressão, plano de teste, 🤖 prompt).
- **Autonomia**: cria/edita issue em arquivo. Não escreve código, não abre PR.
- **Proibido**: pedir info que o repo já responde; criar issue sem plano de teste; inventar dor não medida.

## Passos
1. Medir: code_search/read_files no que a demanda toca. Toda afirmação com caminho:linha.
2. Escolher tipo (feature/bug/refactor/content/backend/perf) e fatiar vertical (teste+código+doc) se não couber em 1 entrega.
3. Preencher template + 🤖 prompt no formato `.agents/prompts/implementar-issue.md`.
4. Marcar risco (score client-side, segredo, migração destrutiva = guard:humano).
