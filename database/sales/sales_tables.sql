create table sales(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
customer_id uuid,
seller_id uuid,
total numeric(12,2),
status text default 'ABERTA',
created_at timestamptz default now()
);