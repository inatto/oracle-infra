SELECT
    e.id                         AS entity_id,
    m.id                         AS member_id,
    e.tenant_code,
    et.id                        AS etype_id,
    et.code                      AS etype_code,
    et.name                      AS etype_name,
    e.name                       AS nome,
    e.br_cpf,
    e.br_cpf_mask,
    e.email,
    e.active                     AS entity_active,
    m.active                     AS member_active,
    e.md5_password               AS senha_md5_atual,
    LOWER(STANDARD_HASH(e.br_cpf, 'MD5'))
        AS nova_senha_md5
FROM WKSP_SINDICATTO.ENTITY e
JOIN WKSP_SINDICATTO.MEMBER m
     ON m.entity_id = e.id
             AND LOWER(m.tenant_code) = LOWER(e.tenant_code)
JOIN WKSP_SINDICATTO.ETYPE et
     ON LOWER(et.tenant_code) = LOWER(m.tenant_code)
             AND LOWER(et.code) = LOWER(m.etype_code)
WHERE LOWER(e.tenant_code) = 'anpprev'
    AND LOWER(m.etype_code) = 'associate'
    AND e.br_cpf IS NOT NULL
    AND REGEXP_LIKE(e.br_cpf, '^[0-9]{11}$')
ORDER BY e.name;

SELECT
    et.id                        AS etype_id,
    et.code                      AS etype_code,
    et.name                      AS etype_name,
    COUNT(DISTINCT e.id)         AS quantidade_associados
FROM WKSP_SINDICATTO.ENTITY e
JOIN WKSP_SINDICATTO.MEMBER m
     ON m.entity_id = e.id
             AND LOWER(m.tenant_code) = LOWER(e.tenant_code)
JOIN WKSP_SINDICATTO.ETYPE et
     ON LOWER(et.tenant_code) = LOWER(m.tenant_code)
             AND LOWER(et.code) = LOWER(m.etype_code)
WHERE LOWER(e.tenant_code) = 'anpprev'
    AND LOWER(m.etype_code) = 'associate'
    AND e.br_cpf IS NOT NULL
    AND REGEXP_LIKE(e.br_cpf, '^[0-9]{11}$')
GROUP BY
    et.id,
    et.code,
    et.name;


SAVEPOINT antes_senhas_associados;

UPDATE WKSP_SINDICATTO.ENTITY e
SET
    e.md5_password = LOWER(STANDARD_HASH(e.br_cpf, 'MD5')),
    e.updated_at    = SYSDATE
WHERE LOWER(e.tenant_code) = 'anpprev'
    AND e.br_cpf IS NOT NULL
    AND REGEXP_LIKE(e.br_cpf, '^[0-9]{11}$')
    AND EXISTS (
    SELECT 1
    FROM WKSP_SINDICATTO.MEMBER m
    JOIN WKSP_SINDICATTO.ETYPE et
         ON LOWER(et.tenant_code) = LOWER(m.tenant_code)
                 AND LOWER(et.code) = LOWER(m.etype_code)
    WHERE m.entity_id = e.id
        AND LOWER(m.tenant_code) = LOWER(e.tenant_code)
        AND LOWER(et.code) = 'associate'
);

COMMIT;