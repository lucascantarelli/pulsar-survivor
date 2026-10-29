# Deploy Supabase (ISS-041) — chaves fora do repo

1. SQL: cole backend/schema.sql no SQL editor do dashboard (ou supabase db push).
2. Link: supabase link --project-ref ypgzwfvmfxblwwvyfsph (SUPABASE_PASS no ambiente).
3. Deploy: supabase functions deploy submit-score (service_role fica no servidor, nunca no jogo).
4. Client: configure no Godot ProjectSettings supabase/url + supabase/anon_key (publishable).
5. Teste cheat: save adulterado nao sobe; score absurdo recebe 422.
