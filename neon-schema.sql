create table if not exists app_store (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

insert into app_store (id, data)
values ('main', '{}'::jsonb)
on conflict (id) do nothing;

create index if not exists app_store_updated_at_idx
  on app_store (updated_at desc);

select id, updated_at, jsonb_typeof(data) as data_type
from app_store
where id = 'main';
