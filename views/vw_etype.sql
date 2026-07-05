CREATE OR REPLACE VIEW vw_etype AS
SELECT *

FROM vw_raw_etype
WHERE 1 = 1
    AND lower(tenant_code) = lower(v('G_TENANT_CODE')) OR sys_context('USERENV', 'MODULE') = 'DataGrip'
;

SELECT *
FROM vw_etype
WHERE 1 = 1
--     AND code = 'associate'
;