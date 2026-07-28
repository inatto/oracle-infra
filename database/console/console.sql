SELECT COUNT(*) AS total_apagar
FROM entity e
WHERE e.tenant_code <> 'asaclub'
    AND NOT EXISTS (
    SELECT 1
    FROM member m
    WHERE m.entity_id = e.id
);