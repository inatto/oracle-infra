-- noinspection SqlConstantExpressionForFile
SELECT *
FROM vw_etype
WHERE 1 = 1
--     AND tenant_code = 'ASACLUB'
--     AND active = 1
-- and code = 'client'
ORDER BY tenant_code
;


-- 20260705-2301 select list
SELECT name, code
FROM vw_etype
WHERE 1 = 1
ORDER BY name
;