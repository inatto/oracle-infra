-- noinspection SqlConstantExpressionForFile
SELECT *
FROM ctype
WHERE 1 = 1
--      AND tenant_code = 'ASACLUB'
--     AND active = 1
-- and code = 'client'
;


--
SELECT name, code
FROM ctype
WHERE 1 = 1
        AND (LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')))
;