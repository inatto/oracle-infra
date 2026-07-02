-- noinspection SqlConstantExpressionForFile

-- atualiza id entity para os membros (antigo id_pessoa_old)
MERGE INTO member m
USING entity e
    -- tem que comparar ids e tenants
ON (m.id_pessoa_old = e.id_pessoa_old AND m.tenant_code = e.tenant_code)
WHEN MATCHED THEN
    UPDATE SET m.entity_id = e.id
;


-- enderecos
MERGE INTO address a
USING entity e
    -- tem que comparar ids e tenants
ON (a.id_pessoa_old = e.id_pessoa_old AND a.tenant_code = e.tenant_code)
WHEN MATCHED THEN
    UPDATE SET a.entity_id = e.id
;

SELECT *
FROM address a
LEFT JOIN entity e ON e.id = a.entity_id
WHERE 1 = 1
     AND e.id = 5;
;