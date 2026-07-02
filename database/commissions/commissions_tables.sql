create table commissions(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
seller_id uuid not null,
sale_id uuid,
commission_value numeric(12,2),
status text default 'PENDENTE'
);