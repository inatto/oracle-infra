CREATE OR REPLACE VIEW vw_member_partner AS
SELECT m.*
FROM vw_raw_member m
JOIN partnership p ON p.tenant_code = m.tenant_code
            AND LOWER(p.parent_code) = LOWER(v('G_TENANT_CODE'))
            AND p.role = 'partner'
-- TODO 20250723 rever
-- JOIN role_etype r ON r.etype_code = m.etype_code AND r.role_code = 'partner'
WHERE 1 = 1
;

SELECT *
FROM vw_member_partner
ORDER BY id DESC
;