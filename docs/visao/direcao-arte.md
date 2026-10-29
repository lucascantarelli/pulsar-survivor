# Direção de Arte — Dark Legível Performático

Evolução do "Dark Cinematic Realism" da FASE2 para caber no Godot Mobile/Compatibility.

## Princípios
- Fundo escuro saturação baixa, inimigos com rim-light quente, player outline ciano + blob shadow.
- Grama/rochas low-poly com normal map de scan (não malha raw Megascans). Água: cubemap fake + ripple, sem SSR.
- Iluminação: máx 2 luzes reais + emissive/baked. Bloom contido, sem volumetric fog real.

## Hierarquia VFX (ordem de desenho)
1. Player/dano recebido — sempre por cima, flash borda vermelha.
2. Elite/projétil inimigo — alto contraste laranja/vermelho pulsante + anel.
3. Dano do player — bonito mas translúcido 60-70%.
4. Ambiente — apaga 30% durante luta intensa.

## Regras anti-poluição
- Slow-mo 0.2s no level-up para leitura.
- Poça de dano inimigo com borda pulsante, nunca preenchimento sólido gigante.
- Auras de mãos/armas: emissive + heat distortion leve, sem 4 partículas no mesmo pixel.
