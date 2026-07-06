CREATE OR REPLACE VIEW vw_processo_br AS
SELECT DISTINCT *

FROM vw_raw_processo_br
WHERE 1 = 1
    AND lower(tenant_code) = lower(v('G_TENANT_CODE')) OR sys_context('USERENV', 'MODULE') = 'DataGrip'
;

SELECT * FROM vw_processo_br
;
