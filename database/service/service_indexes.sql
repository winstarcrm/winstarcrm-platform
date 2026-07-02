create index idx_service_tenant on service_orders(tenant_id);
create index idx_service_imei on service_orders(device_imei);