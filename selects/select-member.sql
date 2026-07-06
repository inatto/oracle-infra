SELECT *
FROM member
WHERE 1 = 1
--     AND tenant_code = 'SINDICATTO'
--     AND internal_tag = 'pyimport'
--     AND nvl(internal_tag, '') <> 'pyimport'
--      AND etype_code = 'director'
    AND etype_code = 'admin'
ORDER BY id DESC
;

-- 20260625-2346
DELETE FROM member WHERE id >= 25764 AND internal_tag = 'pyimport';


SELECT 1
    , listagg(id_membro_old, ',')
    , listagg(e.br_cpf, ',')
    , max(id_membro_old)
FROM member m
LEFT JOIN entity e ON e.id = m.entity_id
WHERE 1 = 1
    AND m.tenant_code = 'ADPF'
    AND m.active = 1
    AND m.etype_code = 'associate'
;


SELECT DISTINCT listagg(id_membro_old, ','), count(id_membro_old)
FROM member m
WHERE 1 = 1
    --     AND id = 25141 -- dev anpprev
    AND tenant_code = 'ADPF'
    AND nvl(id_membro_old, 0) <> 0
;



SELECT m.id member_id, m.entity_id, e.name, m.*
FROM member m
LEFT JOIN entity e ON e.id = m.entity_id
WHERE 1 = 1
    AND m.tenant_code = 'ANPPREV'
    --     AND e.email = 'dev@inatto.com'
    AND e.email LIKE '%@anpprev.org.br'
-- AND m.id IN (6908, 6921, 8017)
-- AND m.etype_code <> 'associate'
;

INSERT INTO member (tenant_code, etype_code, entity_id) VALUES ('ASACLUB', 'associate', 7910);


SELECT *
FROM vw_raw_member
WHERE 1 = 1
    --     AND id = 25140
    AND email = 'dev@inatto.com'
--     AND entity_id = 7082
--      AND tenant_code = 'ASACLUB' AND name LIKE '%THAISE DE SOUZA LISBOA%'
--      AND br_cpf_hash = '95f5531f091a62f90ea623cd6701670f79a7c1ac'
ORDER BY id
;

--
SELECT *
FROM vw_raw_member m
JOIN partnership p
     ON p.tenant_code = m.tenant_code
         AND p.role = 'partner'
         AND p.parent_code = 'ASACLUB'
ORDER BY m.tenant_code, m.etype_code;

--
SELECT *
FROM vw_raw_member m
LEFT JOIN partnership p ON p.tenant_code = m.tenant_code AND p.role = 'partner' AND p.parent_code = 'ASACLUB'
WHERE 1 = 1
    AND p.tenant_code IS NOT NULL
ORDER BY m.tenant_code, m.etype_code
;



SELECT *
FROM member
WHERE 1 = 1
    AND entity_id IN (7910, 7911)
ORDER BY id DESC
;

SELECT *
FROM member m
LEFT JOIN entity e ON e.id = m.entity_id
ORDER BY m.id DESC
;

SELECT *
FROM member
LEFT JOIN etype ON member.etype_code = etype.code
;

-- membros sem entidade
SELECT m.*
FROM member m
LEFT JOIN entity e ON m.entity_id = e.id
WHERE e.id IS NULL
;






