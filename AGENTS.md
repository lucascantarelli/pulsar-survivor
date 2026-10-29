# AGENTS.md — entrada canônica do agente (Pulsar Survivor)

> ✅ atual (29/10/2026) · **Este arquivo é ponteiro, não fonte.** Cada regra tem UMA casa (tabela em `.agents/README.md`).
> Resposta ao dono em PT-BR. Sem git remoto por enquanto: a memória vive em arquivos, não em labels.

## 1. Premissa (vale acima de tudo)

**O device intermediário 4-6GB é a fonte** (ADR-0003): performance se mede no aparelho/host alvo, não se deduz do editor.
Fotorrealismo não atropela legibilidade nem 30fps. Dúvida de gameplay se resolve com protótipo + profiler, nunca com palpite.

## 2. Ordem de leitura (não pule)

1. [`knowledge.md`](knowledge.md) — estado vivo, armadilhas Windows/Git Bash/Godot, o que não fazer.
2. [`docs/INDEX.md`](docs/INDEX.md) — qual doc responde qual pergunta. Não adivinhe caminho.
3. **A issue** (`docs/issues/ISS-*.md`) — contexto, escopo, DoD e o 🤖 prompt pronto.
4. **A skill da área** (`.agents/skills/*/SKILL.md`, disparada pela `description`).
5. **O papel da vez** (`.agents/agents/README.md`).

## 3. A equipe: quem faz o quê

| Papel | Contrato | Entra em | Sai em |
|---|---|---|---|
| triagem | `.agents/agents/triagem.md` | demanda crua | issue auto-suficiente |
| implementador | `.agents/agents/implementador.md` | issue pronta | PR/diff + gates |
| revisor | `.agents/agents/revisor.md` | diff pronto | aprovado ou 1 correção |
| verificador | `.agents/agents/verificador.md` | aprovado | integrado + docs-sync |

Um papel por turno. Estado em `docs/issues/BACKLOG-ISSUES.md` + status na issue.

## 4. Comandos canônicos

```bash
# Godot (quando houver project.godot)
godot --headless --path . --import
godot --headless --path . -s addons/gut/gut_cmdln.gd -gdir=res://tests/unit,res://tests/integration -ginclude_subdirs -gexit -gjunit_xml_file=test-results/gut.xml
# Docs
grep -r "script_class" content/ docs/  # BaseRaca/BaseClasse consistentes
```

## 5. Não fazer

- Relaxar gate (skip, expectativa editada, `--no-verify`) para passar.
- Hardcodar números de raça/classe fora de `.tres` BaseRaca/BaseClasse.
- Escrever score/moeda premium pelo client (só Edge valida — backend-integrator).
- Duplicar regra em dois docs (uma casa por regra, resto aponta).
- Escrever contador (testes, tris, issues) fora de `docs/INDEX.md` §6.
- Commit sem conventional commits quando houver git; movimento só-texto com trailer `Move-only:`.

## 6. Dono ausente

Executa a fila na ordem do ROADMAP (uma issue por vez), comenta o crítico na issue e para. Crítico: merge em main, delete não mergeado, release/tag, segredo, migração destrutiva.
