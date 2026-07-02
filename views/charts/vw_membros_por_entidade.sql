-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_membros_por_entidade AS

    -- partners de uma tenant
SELECT t.code, COUNT(*) total
FROM member m
LEFT JOIN entity e ON m.entity_id = e.id
LEFT JOIN tenant t ON t.code = m.tenant_code
WHERE 1 = 1

    --
    AND m.etype_code = 'associate'
    AND m.active = 1
    AND e.active = 1

    --
    AND m.tenant_code IN
        (SELECT tenant_code FROM mv_partnership_partners WHERE LOWER(parent_code) = LOWER(v('G_TENANT_CODE')))

GROUP BY t.code
ORDER BY COUNT(*) DESC
;

--
SELECT * FROM vw_membros_por_entidade
;