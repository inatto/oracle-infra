CREATE
OR REPLACE VIEW vw_email_campaign AS
SELECT *

FROM vw_raw_email_campaign
WHERE 1 = 1
        AND LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR
    sys_context('USERENV', 'MODULE') = 'DataGrip'
/

SELECT *
FROM vw_email_campaign
/