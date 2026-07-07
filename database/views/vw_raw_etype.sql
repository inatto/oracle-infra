-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_raw_etype AS
SELECT tenant_code
    , hash
    , code
    , name
    , plural_name
    , tag_perfil_old

FROM etype t
WHERE 1 = 1
;

SELECT *
FROM vw_raw_etype
ORDER BY tenant_code
;