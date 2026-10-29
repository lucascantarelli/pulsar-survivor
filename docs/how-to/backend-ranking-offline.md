# How-to — Backend Ranking Offline (Supabase)

Client HTTPRequest manda `run_result{tempo,kills,seed,hash,dificuldade}`. Edge Function valida (ex. kills/min teto) e só ela escreve leaderboard/Cristais. Fila local com ID idempotente sincroniza ao voltar online. RLS: user só lê/escreve próprio perfil, ranking via função. Chave publishable no client, secret só server. Save AES-256 local é conveniência, não anti-cheat.
