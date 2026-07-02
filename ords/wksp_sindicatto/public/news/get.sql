SELECT c.id
    , c.tenant_code
    , c.ctype_code
    , c.title
    , c.contents
    , c.created_at
    , c.updated_at
    , c.published_at
    , c.image_alt
    , CASE WHEN c.image_url IS NOT NULL THEN c.image_url
           WHEN c.image_blob IS NOT NULL THEN
               '/ords/wksp_sindicatto/api/content-image/' || c.id ||
               '?v=' || to_char(nvl(c.image_updated_at, c.updated_at), 'YYYYMMDDHH24MISS')
    END AS image_url
    , ct.name AS ctype_name

FROM content c
LEFT JOIN ctype ct ON ct.tenant_code = c.tenant_code AND ct.code = c.ctype_code
WHERE ctype_code = 'news'

ORDER BY c.published_at DESC




