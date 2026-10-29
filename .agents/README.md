# `.agents/` — harness do agente (Pulsar Survivor)

Três camadas + mapa + memória (padrão GP-100 app, adaptado p/ Godot sem aparelho):

```
.agents/
├── README.md          # este mapa: ordem de entrada + fontes únicas
├── agents/            # QUEM faz (papéis: triagem→implementador→revisor→verificador)
├── skills/            # COMO se faz (sob demanda, via `description`)
│   ├── github-flow/ · gdscript-practices/ · testing-godot/ · docs-sync/
│   ├── gameplay-implementer/ · content-designer/ · tech-art-optimizer/
│   └── backend-integrator/ · qa-perf/
└── prompts/           # O QUE executar (templates prontos p/ colar)
    ├── implementar-issue.md · executar-issues-em-sequencia.md · corrigir-bug.md
    └── code-review-completo.md · auditoria.md · release.md
```

## Ordem de entrada
1. `knowledge.md` (raiz) — premissa, armadilhas, o que NÃO fazer.
2. `docs/INDEX.md` — mapa: qual doc responde qual pergunta.
3. A issue (`docs/issues/ISS-*.md`) — contexto, escopo, DoD, 🤖 prompt.
4. A skill da área (description do SKILL.md). Processo (`github-flow`, `docs-sync`) vale sempre.
5. O papel (`.agents/agents/README.md`). Um papel, um turno.

## Regras de vida
- Issue manda: DoD dela define "pronto"; doc não duplica plano de issue.
- Uma issue = uma entrega; `Closes #N` quando houver git/PR.
- Uma casa por regra (tabela abaixo). Regra repetida apodrece.
- Ao fechar marco: docs-sync (commit próprio) mantém INDEX/ROADMAP/knowledge honestos.
- Skill nova só se justificar; skill morta vai p/ `docs/arquivo/`, nunca apaga.

## Fontes únicas por regra
| Assunto | Casa | Demais |
|---|---|---|
| Device 4-6GB é a fonte; medir, não deduzir | qa-perf | apontam |
| Ciclo issue→branch→PR→CI | github-flow | apontam |
| Conventional commits | github-flow | apontam |
| Onde cada teste Godot vive (unit/integration/perf) | testing-godot | apontam |
| Estilo GDScript (tabs, snake_case, sinais passado, Resources) | gdscript-practices | apontam |
| Contadores (issues/testes/tris) só no INDEX §6 | docs-sync | apontam |
| Armadilhas host (python3, pipefail, CRLF, Godot templates) | knowledge.md | apontam |
| Cadeia release | release (futuro, em prompts/release.md) | apontam |
| Papéis + estado | .agents/agents/README.md | apontam |
