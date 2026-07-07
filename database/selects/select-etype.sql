-- noinspection SqlConstantExpressionForFile
SELECT *
FROM etype
WHERE 1 = 1
--     AND tenant_code = 'asaclub'
--      AND lower(tenant_code) = 'anpprev'
--     AND active = 1
--  and code = 'financial'
ORDER BY tenant_code, code
;