# knowledge.md — Pulsar Survivor (ler antes de agir)

> Mapa: `docs/INDEX.md` · Plano: `roadmap/ROADMAP.md` + `docs/issues/` · Números: `docs/INDEX.md` §6 (nunca repita contador aqui).

**Premissa:** device 4-6GB é a fonte (ADR-0003). Godot 4 Compatibility/Mobile, 2 exports (AAB + EXE). Resposta em PT-BR.

## Estado vivo (1-3 linhas por marco)
- 29/10 — Governança v2 importada das refs GP-100 (AGENTS ponteiro, INDEX mapa, papéis triagem→verificador, prompts, skills github-flow/gdscript/testing/docs-sync + 5 domínio Base*). Fix BaseRaca/BaseClasse nos 4 .tres.
- 29/10 — Fichas 2x2 validadas em arquivo (parse Godot ainda pendente, sem project.godot).
- 28/10 — Docs Diátaxis base + ROADMAP Fase 0-5 + BACKLOG-ISSUES ISS-001→052 + 5 skills domínio.

## O que NÃO fazer
- Sem issue, sem código. Uma issue = uma entrega. Descoberta nova vira issue.
- Sem teste novo junto de código novo (onde vive: testing-godot).
- Sem `script_class="Dados*"` (é `BaseRaca`/`BaseClasse`).
- Sem score client-side. Sem asset sem ficha no asset-register.

## Armadilhas deste host (Windows + Git Bash + Godot)
- `python3` não existe no Git Bash (alias Store): usar `python` ou `uv run python`. Heredoc `python - <<'EOF'` frágil — prefira arquivo temporário.
- `pipe | tail` engole exit 1: usar `set -o pipefail` ou checar exit code.
- Escrever arquivo em modo texto vira CRLF: gerador deve usar LF explícito; conferir `git status` limpo quando houver git.
- Godot: sem `project.godot` não há import/teste real; export templates devem casar com versão do editor; presets Android (AAB, OpenJDK 17, keystore release) e Windows (x86_64) separados; segredos fora de `export_presets.cfg`.
- `grep -H script_class content/*/*.tres` é o smoke test de consistência Base*.

- 29/10 — Fase 0 fechada em modo ausente: project.godot Compatibility + main/stress validos, save AES-256 via OS.get_unique_id().sha256, export_presets Android+Windows, import OK, GUT 9.7.1 2/2 verde. Commits na main.

- 29/10 — Fase 1 fechada em modo ausente: player CharacterBody3D + camera_rig + joystick + essence, input move WASD/setas, main/stress validos, GUT 9.7.1 4/4 verde.

- 29/10 — Fase 2 fechada em modo ausente: spawner.gd central + grid + MultiMesh 1000, spawn_rule borda 18m, GUT 9.7.1 6 scripts 7/7 verde.

- 29/10 — Fase 3 fechada: .tres convertidos p/ formato Godot 4.7 nativo ([resource] + script como propriedade; formato Godot 3 inline era ignorado e deixava get_script()=null). run_manager load_combo + 4 sinergias, GUT 8 scripts 10/10.

- 29/10 — Fase 4 nucleo local fechado: meta.gd (Forja 50*1.6^lvl, Mastery x1.15/x1.2, Reliquias cap 4), backend.gd outbox idempotente, schema.sql RLS + Edge esqueleto, GUT 10 scripts 14/14.

- 29/10 — Planejamento completo antes de seguir implementacao: 22 issues detalhadas (ISS-001..052 + EPIC Fase 5), catalogo recursos-gratuitos CC0, enredo-temas, mapa-floresta. Testes seguem 14/14.

- 29/10 — ISS-041 wired: schema.sql (runs + leaderboard RLS + unique), Edge submit-score (JWT + bounds + kill-rate + upsert idempotente), supabase_client.gd (validacao espelho + configure sem hardcode), DEPLOY.md. SUPABASE_PASS ausente neste shell — deploy pendente. GUT 16/16.
