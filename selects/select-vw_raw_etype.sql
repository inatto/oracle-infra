-- noinspection SqlConstantExpressionForFile
SELECT *
FROM vw_raw_etype
WHERE 1 = 1
--     AND tenant_code = 'ASACLUB'
--     AND active = 1
-- and code = 'client'
ORDER BY tenant_code
;
