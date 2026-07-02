create table suppliers(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
name text not null,
document text,
created_at timestamptz default now());

create table purchase_orders(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
supplier_id uuid references suppliers(id),
status text default 'ABERTO',
total numeric(12,2),
created_at timestamptz default now());