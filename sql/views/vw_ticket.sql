CREATE OR REPLACE VIEW vw_ticket AS
SELECT *

FROM vw_raw_ticket
WHERE 1 = 1
    AND LOWER(tenant_code) = LOWER(v('G_TENANT_CODE'))
/

SELECT * FROM vw_ticket
/