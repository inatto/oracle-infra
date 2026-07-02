CREATE OR REPLACE VIEW vw_content AS
SELECT c.*, ct.name ctype_name

FROM content c
LEFT JOIN ctype ct ON ct.code = c.ctype_code
WHERE 1 = 1
    AND (
    LOWER(c.tenant_code) = LOWER(v('G_TENANT_CODE')) OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip' OR is_sindicatto()
    )
;


SELECT *
FROM vw_content
;