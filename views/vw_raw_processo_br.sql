-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_raw_processo_br AS
SELECT 1 dummr
    , t.name tenant_name
    , processo_br.*

FROM processo_br
LEFT JOIN tenant t ON t.code = processo_br.tenant_code

/
SELECT * FROM vw_raw_processo_br
/