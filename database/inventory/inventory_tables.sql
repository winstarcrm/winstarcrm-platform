create table inventory_movements(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
product_id uuid not null,
movement_type text not null,
quantity numeric(12,2) not null,
created_at timestamptz default now()
);

create table imei_registry(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
product_id uuid not null,
imei text unique not null,
status text default 'EM_ESTOQUE'
);