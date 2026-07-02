create table products(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
sku text unique,
barcode text,
name text not null,
cost_price numeric(12,2),
sale_price numeric(12,2),
active boolean default true,
created_at timestamptz default now()
);