create table service_orders(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
customer_id uuid,
device_imei text,
status text default 'ABERTA',
created_at timestamptz default now()
);

create table service_parts(
id uuid primary key default gen_random_uuid(),
service_order_id uuid references service_orders(id),
product_id uuid,
quantity numeric(12,2)
);