create table accounts_receivable(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
customer_id uuid,
amount numeric(12,2),
due_date date,
status text default 'PENDENTE'
);

create table accounts_payable(
id uuid primary key default gen_random_uuid(),
tenant_id uuid not null,
supplier_id uuid,
amount numeric(12,2),
due_date date,
status text default 'PENDENTE'
);