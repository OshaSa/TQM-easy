-- شغّل هذا الملف كامل في Supabase > SQL Editor
create table if not exists public.docs (
  collection text not null,
  id text not null,
  data jsonb not null default '{}'::jsonb,
  primary key (collection, id)
);

alter table public.docs enable row level security;
drop policy if exists "tqm_all" on public.docs;
create policy "tqm_all" on public.docs for all to anon using (true) with check (true);

alter table public.docs replica identity full;
alter publication supabase_realtime add table public.docs;

-- حساب أدمن مبدئي: الاسم admin / كلمة السر 1234  (غيّرها بعد أول دخول)
insert into public.docs (collection,id,data) values
 ('users','admin','{"name":"admin","pin":"1234","role":"admin","progs":[],"pv":[],"plan":true}'::jsonb)
on conflict do nothing;
insert into public.docs (collection,id,data) values ('meta','init','{"at":0}'::jsonb) on conflict do nothing;
