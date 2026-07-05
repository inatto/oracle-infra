SELECT c.id
     , c.tenant_code
     , c.ctype_code
     , c.slug
     , c.sort_order
     , c.status
     , c.title
     , c.contents
     , c.content_format
     , c.created_at
     , c.updated_at
     , c.published_at
     , c.image_alt
     , CASE
           WHEN c.image_url IS NOT NULL THEN
               c.image_url
           WHEN c.image_blob IS NOT NULL THEN
               '/ords/wksp_sindicatto/api/content-image/' || c.id ||
               '?v=' || to_char(nvl(c.image_updated_at, c.updated_at), 'YYYYMMDDHH24MISS')
       END AS image_url
FROM content c
LEFT JOIN ctype ct
       ON lower(ct.tenant_code) = lower(c.tenant_code)
      AND lower(ct.code) = lower(c.ctype_code)
WHERE lower(c.ctype_code) = lower(:code)
--   AND nvl(c.status, 'published') = 'published'
ORDER BY nvl(c.sort_order, 999999), c.published_at DESC, c.id DESC