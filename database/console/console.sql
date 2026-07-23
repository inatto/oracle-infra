SELECT
    LOWER(TRIM(a.type)) AS address_type,
    COUNT(*) AS quantidade,
    COUNT(a.uf) AS com_uf
FROM WKSP_SINDICATTO.ADDRESS a
WHERE LOWER(a.tenant_code) = 'anpprev'
GROUP BY LOWER(TRIM(a.type))
ORDER BY quantidade DESC;