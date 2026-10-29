-- ISS-041: tabelas + RLS. Aplicar via supabase SQL editor ou CLI (requer SUPABASE_PASS).

create table if not exists public.runs (
  user_id uuid not null references auth.users(id),
  run_id text not null,
  game text not null default 'pulsar-survivor',
  build text not null default '0.0.1',
  score integer not null check (score >= 0 and score <= 100000000),
  kills integer not null default 0 check (kills >= 0 and kills <= 1000000),
  time_ms integer not null default 0 check (time_ms >= 0 and time_ms <= 7200000),
  difficulty text not null default 'fenda-1',
  created_at timestamptz not null default now(),
  primary key (user_id, run_id)
);

create table if not exists public.leaderboard_entries (
  user_id uuid not null references auth.users(id),
  season text not null default 's1',
  score integer not null,
  kills integer not null default 0,
  time_ms integer not null default 0,
  updated_at timestamptz not null default now(),
  primary key (user_id, season)
);
create index if not exists leaderboard_season_score on public.leaderboard_entries (season, score desc);

alter table public.runs enable row level security;
alter table public.leaderboard_entries enable row level security;
revoke all on table public.runs from anon, authenticated;
revoke all on table public.leaderboard_entries from anon, authenticated;
grant select on table public.leaderboard_entries to anon, authenticated;
create policy "Leaderboard is readable"
on public.leaderboard_entries for select to anon, authenticated using (true);
