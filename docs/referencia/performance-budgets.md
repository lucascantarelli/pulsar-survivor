# Performance Budgets (intermediário 4-6GB)

- Inimigo: 800-1500 tris, 1 material, blob shadow (sem sombra real), sem skinning pesado — MultiMesh chunked por região.
- Cenário: grama via MultiMesh, árvores LOD, máx 2 luzes reais + resto emissive/baked.
- VFX: ≤30 transparências sobrepostas, partículas pooladas, bloom contido.
- Texturas GPU comprimidas, sem cópia CPU legível.
- Metas: 200 dummies @60fps → 500 @30fps documentado → 1000 chunked + spatial grid + LOD distância.
- Medir sempre: FPS, draw calls, memória, temperatura 15min.
