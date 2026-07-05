-- noinspection SqlConstantExpressionForFile
SELECT *
FROM etype_permission
WHERE 1 = 1
--     AND tenant_code = 'ASACLUB'
--     AND active = 1
-- and code = 'client'
ORDER BY tenant_code, page_alias, action_code
;