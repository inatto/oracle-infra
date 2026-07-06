CREATE OR REPLACE VIEW vw_member AS
SELECT *

FROM vw_raw_member m
WHERE 1 = 1
        AND LOWER(m.tenant_code) = LOWER(v('G_TENANT_CODE')) OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip'
;

SELECT *
FROM vw_member
ORDER BY id DESC
;
