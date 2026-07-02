-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_membros_por_perfil AS

    -- partners de uma tenant
SELECT e.plural_name, COUNT(*) total
FROM member m
LEFT JOIN etype e ON e.code = m.etype_code AND e.tenant_code = m.tenant_code
WHERE 1 = 1

    --
    AND m.active = 1
    AND LOWER(m.tenant_code) = LOWER(v('G_TENANT_CODE'))

GROUP BY e.plural_name
ORDER BY COUNT(*)
;

--
SELECT * FROM vw_membros_por_perfil
;