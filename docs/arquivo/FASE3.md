
# Sistemas de Progressão e Economia

```text
[ Gameplay Loop: Run de 15 a 20 Minutos ]
                      │
                      ▼
 ┌──────────────────────────────────────────┐
 │ Matar Inimigos ➔ Coletar Essência (EXP) │
 └────────────────────┬─────────────────────┘
                      │
                      ▼
 ┌──────────────────────────────────────────┐
 │ Upgrades Intra-Run (Armas / Passivas)   │
 └────────────────────┬─────────────────────┘
                      │
                      ▼
 ┌──────────────────────────────────────────┐
 │ Derrotar Chefes de Fenda (Minuto 5, 10, 15)│
 └────────────────────┬─────────────────────┘
                      │
                      ▼
 ┌──────────────────────────────────────────┐
 │ Vitória / Morte ➔ Coleta de Fragmentos   │
 └────────────────────┬─────────────────────┘
                      │
                      ▼
[ Árvore de Meta-Progressão Permante (Forja) ]
```
## Avanço Vertical vs. Horizontal
Avanço Vertical (Poder Bruto):

Árvore de Forja Permanente: Gastar Cristais obtidos nas runs para aumentar Vida Base, Dano Global, Área de Efeito, Armadura e Chance de Atração.

Nível de Conta (Mastery): Desbloqueia novas dificuldades de Fenda (Fenda I até Fenda X), aumentando o HP/Dano dos inimigos, mas multiplicando o Drop de Recompensas.

Avanço Horizontal (Variedade e Estratégia):

Desbloqueio de novas combinações de Raças e Classes.

Sistema de Relíquias (Equipamentos): O jogador equipa até 4 relíquias passivas antes da run (ex: Anel da Ganância = +Ouro/Gemas; Amuleto Vampírico = Dano cura a vida).

## Loja e Monetização Ética (Fair Free-to-Play)
Para evitar o desgaste e abandono da base de jogadores, a monetização é focada em cosméticos e utilidades não invasivas:

Passe de Batalha de Fenda (Sazonal):

Linha Gratuita: Recurso, Fragmentos, 1 Skin básica.

Linha Premium: Skins 3D exclusivas de personagens, efeitos visuais de armas personalizados, títulos e pet de coleta automático.

Skins e Efeitos Cosméticos:

Modelos 3D estilizados alterando a aparência das raças e cores de iluminação dos golpes.

Vídeos Premiados Opcionais (Ads de Valor):

Sem pop-ups forçados no meio do jogo.

Opção voluntária no final da run: "Assista a um vídeo para duplicar os Fragmentos obtidos" ou "Uma ressurreição gratuita por run".

## Persistência de Dados e Leaderboards (Rankings)
Tecnologia de Backend: Supabase / Firebase (Free Tier) com chamadas REST/WebSocket integradas ao Godot via C# ou GDScript.

Armazenamento Local: Salvamento criptografado (AES-256) via FileAccess do Godot para progresso offline.

Estrutura do Ranking (Leaderboards Global e Semanal):

Ranking de Sobrevivência de Fenda: Maior tempo vivo na Fenda Abissal (Modo Infinito).

Ranking de Pontuação (Score): Calculado com base em Inimigos Derrotados + Tempo + Modificadores de Dificuldade Escolhidos.

Recompensas Semanais: Os 100 melhores colocados ganham molduras cosméticas no perfil e Cristais Premium.