-- noinspection SqlConstantExpressionForFile
SELECT *
FROM ctype
WHERE 1 = 1
--      AND tenant_code = 'ASACLUB'
--     AND active = 1
-- and code = 'client'
ORDER BY id
;


--
SELECT name, code
FROM ctype
WHERE 1 = 1
    AND (lower(tenant_code) = lower(v('G_TENANT_CODE')))
;