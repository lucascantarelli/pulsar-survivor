# Roadmap e Roteiro de Prompting

Para desenvolver este projeto sem se sobrecarregar, é recomendável dividir o desenvolvimento nas seguintes etapas estruturadas:

```text
[Fase 1: Módulo Core 3D e Movimentação] ➔ [Fase 2: Sistema de Hordas & Performance] ➔ [Fase 3: Raças, Classes & Sinergias] ➔ [Fase 4: UI, Meta-Progressão & Backend]
```

## Prompts de Execução para Utilizar a Seguir:

Prompt 1 (Game Engine & Arquitetura Core): "Forneça o script base em Godot 4 (GDScript ou C#) para movimentação do jogador em um ambiente 3D Top-Down com controle de joystick virtual mobile, câmera suave (smooth follow) e sistema de colisão simples."

Prompt 2 (Sistema de Hordas e Otimização 3D): "Como implementar um spawner de inimigos otimizado em Godot 4 para renderizar até 1.000 monstros em tela utilizando MultiMeshInstance3D ou Object Pooling sem queda de FPS no mobile?"

Prompt 3 (Sistema de Habilidades e Sinergia): "Escreva a arquitetura de código em Godot para gerenciar o sistema de Raça + Classe, permitindo criar habilidades ativas, passivas e evoluções combinadas via Resource Script."

Prompt 4 (Backend Supabase / Firebase): "Como conectar o Godot 4 a uma base de dados Supabase via requisições HTTP para enviar pontuações de ranking e salvar o progresso do jogador com criptografia local?"