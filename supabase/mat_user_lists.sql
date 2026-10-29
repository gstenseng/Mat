-- Run in Supabase SQL Editor for the existing project used by oppussing.
-- Separate table, shared Supabase Auth users.
create table if not exists public.mat_user_lists (
  user_id uuid primary key references auth.users(id) on delete cascade,
  lists_data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.mat_user_lists enable row level security;
revoke all on public.mat_user_lists from anon;
grant select, insert, update, delete on public.mat_user_lists to authenticated;
drop policy if exists "mat_lists_select_own" on public.mat_user_lists;
create policy "mat_lists_select_own" on public.mat_user_lists
 for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "mat_lists_insert_own" on public.mat_user_lists;
create policy "mat_lists_insert_own" on public.mat_user_lists
 for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "mat_lists_update_own" on public.mat_user_lists;
create policy "mat_lists_update_own" on public.mat_user_lists
 for update to authenticated using ((select auth.uid()) = user_id)
 with check ((select auth.uid()) = user_id);
drop policy if exists "mat_lists_delete_own" on public.mat_user_lists;
create policy "mat_lists_delete_own" on public.mat_user_lists
 for delete to authenticated using ((select auth.uid()) = user_id);
