---
name: tech-art-optimizer
description: Optimize survivor art to mobile-ready (LOD, atlases, budgets, glTF pipeline). Use whenever converting Megascans/scans, reducing tris/textures, fixing overdraw, or filling asset-register for Pulsar Survivor.
metadata:
  category: tech-art
  engine: godot-4
  project: pulsar-survivor
---
# Tech-Art Optimizer

## Knowledge
- Pipeline: só GLB/glTF, LODs obrigatórios, compressão GPU, atlas, 1 material/inimigo. Megascans = fonte (retopo/decimate + normal), nunca malha raw. Ver `docs/referencia/asset-pipeline.md`, `asset-register.md`, `performance-budgets.md`.
- Budgets intermediário: inimigo 800-1500 tris, texturas 512-1024 mobile / 2048 PC, ≤2 luzes reais, ≤30 transparências sobrepostas, blob shadow.
- CC0 primeiro: Poly Haven, ambientCG, Quaternius. Fab/Quixel só com ficha licença + teste perf.

## Instructions
1. Auditar asset: tris, materiais, rig/retarget, licença.
2. Otimizar: decimate, LOD, atlas, 1 material, normal map para detalhe.
3. Registrar em asset-register (nome/autor/data/licença/receipt/uso). Nenhum asset sem ficha entra no export.
4. Entregar relatório tris/texturas/draws + cena teste no device mínimo.
