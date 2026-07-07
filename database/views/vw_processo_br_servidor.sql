-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_processo_br_servidor AS
SELECT id id2
    , nome nome2
    , cpf_mask cpf2
    , p.*

FROM processo_br p
WHERE 1 = 1
        AND p.nome_pensionista IS NULL
        AND LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR sys_context('USERENV', 'MODULE') = 'DataGrip'
;

SELECT * FROM vw_processo_br
;
