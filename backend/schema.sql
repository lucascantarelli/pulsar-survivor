-- ISS-041: leaderboard somente leitura p/ anon/authenticated; escrita so via Edge (service_role).
alter table public.leaderboard_entries enable row level security;
revoke all on table public.leaderboard_entries from anon, authenticated;
grant select on table public.leaderboard_entries to anon, authenticated;
create policy "Leaderboard is readable"
on public.leaderboard_entries for select to anon, authenticated using (true);
