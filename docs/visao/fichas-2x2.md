# Fichas 2x2 — Prontas para Content-Designer

Scripts: `content/dados_raca.gd` (`class_name BaseRaca`), `content/dados_classe.gd` (`class_name BaseClasse`).
Arquivos .tres em `content/racas/` e `content/classes/` com `script_class="BaseRaca"` / `"BaseClasse"`.

## Sinergias (Raça x Classe = híbrida)
- **Khemri + Geometrista = Sepulcro Fractal:** Mandala consome escudo para dobrar tamanho 1x/run. Mutação: fractais dourado-preto.
- **Khemri + Cantora = Lamento Polar:** Refrão detona escudo como dano bônus. Mutação: véu dourado vibrante.
- **Vár + Geometrista = Maré Geométrica:** Pulso rítmico gira fractais mais rápido. Mutação: runas ciano nos fractais.
- **Vár + Cantora = Coro Sísmico:** Onda empurra + marca, refrão com +1 pulso. Mutação: ondas azul-violeta duplas.

## Números iniciais (para balancear)
- Khemri escudo cap 30% vida, detonação 150% escudo como dano área.
- Vár pulso 4s, +35% atração 1.5s, +10% dano 2s.
- Geo: 2 projéteis, 1.1s cd, atravessa 3, escala 100% Área.
- Cantora: cone 120°, 0.9s cd, marca 5s, refrão 150% dano marcas.

## DoD content
Ficha → .tres válido no Godot (sem erro parse, script_class Base*) → teste 5min sem queda FPS → VFX nas camadas corretas.
