---
name: content-designer
description: Create Pulsar Survivor races, classes and synergies (hermetic lore, survivor passives/actives). Use whenever creating fichas, .tres BaseRaca/BaseClasse, lore Egito/Sumeria/Nordica/Africana/Mesoamericana, or Raça+Classe hybrid abilities.
metadata:
  category: content
  engine: godot-4
  project: pulsar-survivor
---
# Content Designer

## Knowledge
- Canon: 7 princípios herméticos como mecânicas (Polaridade, Ritmo, Correspondência, etc). Banido: "Elfo da floresta", "Anão mineiro", "Mago piro".
- Scripts: `content/dados_raca.gd` (class_name BaseRaca), `content/dados_classe.gd` (class_name BaseClasse). Fichas: `content/racas/*.tres`, `content/classes/*.tres`.
- Padrão 2x2 validado: Khemri Cinzenta, Vár-Brjóst, Geometrista de Cinzas, Cantora de Fenda. Ver `docs/visao/lore-racas-classes.md`, `docs/visao/fichas-2x2.md`.
- VFX: camadas 2/3, translúcido 60-70%, sem cobrir projéteis inimigos. Ver `docs/visao/direcao-arte.md`.

## Instructions
1. Gerar ficha com: nome original, origem ancestral + mito real, princípio hermético, passiva survivor com números (cd, raio, %), ativa em área com VFX orçado, mutação visual.
2. Sinergia Raça+Classe sempre gera híbrida que muda gameplay + mutação visual (ex. Sepulcro Fractal, Coro Sísmico).
3. Escrever .tres válido: `script_class="BaseRaca"` ou `"BaseClasse"`, IDs únicos (`raca_*`, `classe_*`).
4. Validar com content-design: budget tech-art + teste 5min sem queda FPS antes de escalar 2x2 para 10x10.
