--
DROP MATERIALIZED VIEW mv_partnership_partners;

--
DROP MATERIALIZED VIEW LOG ON partnership;
CREATE MATERIALIZED VIEW LOG ON partnership
    WITH PRIMARY KEY, ROWID
    INCLUDING NEW VALUES;

--
CREATE MATERIALIZED VIEW mv_partnership_partners BUILD IMMEDIATE REFRESH FAST ON COMMIT
AS
SELECT p.tenant_code, p.parent_code, p.role
FROM partnership p
WHERE role = 'partner';

--
SELECT * FROM mv_partnership_partners;