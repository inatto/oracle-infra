-- noinspection SqlConstantExpressionForFile
SELECT *
FROM etype_permission
WHERE 1 = 1
     AND lower(tenant_code) = lower('asaclub')
--     AND active = 1
-- and code = 'client'
ORDER BY tenant_code, etype_code, page_alias, action_code
;

