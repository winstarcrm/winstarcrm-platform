create table crm_leads(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
name text not null,
phone text,
email text,
status text default 'Novo',
seller_id uuid,
created_at timestamptz default now()
);

create table crm_tasks(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
lead_id uuid references crm_leads(id),
title text,
due_date timestamptz,
status text default 'Pendente'
);
