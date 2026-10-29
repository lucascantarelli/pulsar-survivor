---
name: github-flow
description: Fluxo obrigatorio de trabalho (issue, branch tipo/N-slug, gates locais, commit conventional, docs-sync). Use antes de implementar e ao fechar qualquer trabalho no Pulsar Survivor.
metadata:
  category: workflow
  project: pulsar-survivor
---
# GitHub Flow (adaptado, sem remoto obrigatorio)

## Regra zero
Nunca implementar sem issue em docs/issues/. Uma issue = uma entrega. Descoberta nova vira issue na hora.

## Ciclo
1. Issue pronta 2. Branch tipo/N-slug 3. Gates locais 4. Commit conventional 5. Diff + Closes #N 6. Review 7. Integrar 8. docs-sync em commit proprio.

## Proibicoes
Sem push direto em main para trabalho normal. Sem Closes em entrega parcial. Sem gate vermelho contornado. Sem Move-only falso.
