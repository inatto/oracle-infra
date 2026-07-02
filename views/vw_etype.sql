CREATE OR REPLACE VIEW vw_etype AS
SELECT *

FROM vw_raw_etype
WHERE 1 = 1
        AND LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip'
/

SELECT *
FROM vw_etype
WHERE 1 = 1
--     AND code = 'associate'
/