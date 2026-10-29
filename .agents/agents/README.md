# Papéis da equipe — contratos lidos, não agentes carregados

Funciona em qualquer harness que saiba ler arquivo. Estado em `docs/issues/` + status.

| Papel | Arquivo | Entra | Sai |
|---|---|---|---|
| triagem | triagem.md | demanda crua | issue auto-suficiente |
| implementador | implementador.md | issue pronta | diff + gates |
| revisor | revisor.md | diff pronto | aprovado / 1 correção |
| verificador | verificador.md | aprovado | integrado + docs-sync |

Ciclo: triagem → implementador → revisor → verificador → docs-sync.
Fronteira: papel ≠ skill. Papel diz QUEM/QUANDO, skill diz COMO.
Anti-loop: 2 rodadas no mesmo portão → parar e escrever diagnóstico na issue.
