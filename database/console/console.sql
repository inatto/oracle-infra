SELECT
    tenant_code,
    br_cpf,
    COUNT(*) AS total
FROM entity
WHERE tenant_code <> 'asaclub'
    AND br_cpf IS NOT NULL
GROUP BY
    tenant_code,
    br_cpf
HAVING COUNT(*) > 1
ORDER BY
    tenant_code,
    br_cpf;