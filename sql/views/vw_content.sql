CREATE OR REPLACE VIEW vw_content AS
SELECT c.*,
    CASE WHEN c.ctype_code = 'news' THEN 'Notícia'
         ELSE ct.name
    END ctype_name
FROM content c
LEFT JOIN ctype ct ON ct.code = c.ctype_code
WHERE 1 = 1
    AND (
    lower(c.tenant_code) = lower(v('G_TENANT_CODE')) OR sys_context('USERENV', 'MODULE') = 'DataGrip' OR is_sindicatto()
    )
ORDER BY CASE WHEN c.ctype_code = 'news' THEN 0 ELSE 1 END,
         c.ctype_code,
         c.id DESC
;
SELECT *
FROM vw_content
;