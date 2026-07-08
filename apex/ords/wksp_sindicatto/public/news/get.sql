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
LEFT JOIN ctype ct ON lower(ct.tenant_code) = lower(c.tenant_code) AND lower(ct.code) = lower(c.ctype_code)
WHERE 1 = 1
    AND ctype_code = 'news'
--     AND lower(c.tenant_code) = lower(:tenant_code)
-- WHERE c.id = :id

ORDER BY c.published_at DESC