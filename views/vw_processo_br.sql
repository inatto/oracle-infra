CREATE OR REPLACE VIEW vw_processo_br AS
SELECT DISTINCT *

FROM vw_raw_processo_br
WHERE 1 = 1
--         AND LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip'
/

SELECT * FROM vw_processo_br
/
