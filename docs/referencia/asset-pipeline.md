# Asset Pipeline — Só GLB/glTF

- Formato obrigatório GLB/glTF. Proibir FBX com rig exótico, OBJ sem skeleton.
- Quixel/Megascans = fonte: retopo/decimate + normal map, nunca malha raw no mobile.
- LODs obrigatórios para árvore/pedra/inimigo distante. Compressão GPU, atlas de materiais, 1 material/inimigo.
- Texturas: 512-1024 mobile, 2048 PC. Ver budgets.
- Checagem pré-import: tris, nº materiais, rig/retarget, licença.
