-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_raw_entity AS
SELECT e.tenant_id
    , e.tenant_code
    , e.id
    , e.name
    , e.br_cpf
    , e.br_cpf_mask
    , e.birth_date_mask
    , e.br_mobile_mask
    , e.email
    , e.home_uf
    , e.work_uf
    , e.active
    , e.md5_password

FROM entity e
WHERE 1 = 1
/

SELECT *
FROM vw_raw_entity /