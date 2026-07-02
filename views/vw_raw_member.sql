CREATE OR REPLACE VIEW vw_raw_member AS
SELECT m.id
    , m.entity_id
    , m.tenant_id
    , m.tenant_code
    , m.etype_code
    , m.active
    , m.id_membro_old
    --
    , et.name etype_name
    , et.hash etype_hash
    , et.tag_perfil_old
    --
    , lower(standard_hash(lower(m.tenant_code) || lower(nvl(et.tag_perfil_old, '')) || nvl(e.br_cpf, dbms_random.string('X', 40)), 'SHA1')) br_cpf_hash
    --
    , e.br_cpf
    , e.br_cpf_mask
    , e.name
    , e.email
    , e.br_mobile_mask
    , e.birth_date_mask
    , e.home_uf

FROM member m
LEFT JOIN vw_raw_entity e ON e.id = m.entity_id
LEFT JOIN vw_raw_etype et ON (et.code = m.etype_code AND lower(et.tenant_code) = lower(m.tenant_code))
;

SELECT *
FROM vw_raw_member
;


/*marketingasaclub26@gmail.com
mkt123*/