SELECT *
FROM tenant_permission
WHERE 1 = 1
order by tenant_code, id, page_alias
;

-- 20260704-2259
-- update tenant_permission set tenant_code = lower(tenant_code) where 1=1;