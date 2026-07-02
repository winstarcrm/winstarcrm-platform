create index idx_suppliers_tenant on suppliers(tenant_id);
create index idx_po_supplier on purchase_orders(supplier_id);