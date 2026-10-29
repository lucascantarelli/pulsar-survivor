// ISS-041 Edge submit-score (Deno + supabase-js v2).
// Deploy: SUPABASE_PASS no ambiente, nunca no repo:
//   supabase link --project-ref ypgzwfvmfxblwwvyfsph
//   supabase functions deploy submit-score
import { serve } from "https://deno.land/std@0.224.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const MAX_SCORE = 100000000;
const MAX_KILLS = 1000000;
const MAX_TIME_MS = 7200000;
const MAX_KILLS_PER_MIN = 2000;

serve(async (req: Request) => {
  if (req.method !== "POST") return new Response("method not allowed", { status: 405 });
  const auth = req.headers.get("Authorization") ?? "";
  if (!auth.startsWith("Bearer ")) return new Response("missing auth", { status: 401 });
  const url = Deno.env.get("SUPABASE_URL")!;
  const anon = Deno.env.get("SUPABASE_ANON_KEY")!;
  const service = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
  const userClient = createClient(url, anon, { global: { headers: { Authorization: auth } } });
  const { data: userData, error: userErr } = await userClient.auth.getUser();
  if (userErr || !userData?.user) return new Response("invalid token", { status: 401 });
  const userId: string = userData.user.id;
  let body: Record<string, unknown>;
  try { body = await req.json(); } catch { return new Response("bad json", { status: 400 }); }
  const run_id = String(body.run_id ?? "");
  const score = Number(body.score ?? NaN);
  const kills = Number(body.kills ?? 0);
  const time_ms = Number(body.time_ms ?? 0);
  const difficulty = String(body.difficulty ?? "fenda-1");
  if (!run_id || run_id.length > 64) return new Response("bad run_id", { status: 400 });
  if (!Number.isInteger(score) || score < 0 || score > MAX_SCORE) return new Response("bad score", { status: 400 });
  if (!Number.isInteger(kills) || kills < 0 || kills > MAX_KILLS) return new Response("bad kills", { status: 400 });
  if (!Number.isInteger(time_ms) || time_ms < 0 || time_ms > MAX_TIME_MS) return new Response("bad time", { status: 400 });
  const mins = Math.max(time_ms / 60000, 1 / 60);
  if (kills / mins > MAX_KILLS_PER_MIN) return new Response("impossible run", { status: 422 });
  const admin = createClient(url, service);
  const { error: runErr } = await admin.from("runs").upsert(
    { user_id: userId, run_id, score, kills, time_ms, difficulty },
    { onConflict: "user_id,run_id", ignoreDuplicates: false }
  );
  if (runErr) return new Response("db error", { status: 500 });
  await admin.from("leaderboard_entries").upsert(
    { user_id: userId, season: "s1", score, kills, time_ms, updated_at: new Date().toISOString() },
    { onConflict: "user_id,season" }
  );
  return Response.json({ ok: true, run_id });
});
