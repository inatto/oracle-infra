SELECT c.id
    , c.tenant_code
    , c.ctype_code
    , c.slug
    , c.block_code
    , c.sort_order
    , c.status
    , c.title
    , c.contents
    , c.content_format
    , c.author_name
    , c.source_name
    , c.source_url
    , c.created_at
    , c.updated_at
    , c.published_at
    , c.image_alt
    , c.image_filename
    , c.subtype
    , CASE
    WHEN c.image_url IS NOT NULL THEN c.image_url
    WHEN c.image_blob IS NOT NULL THEN
        '/ords/wksp_sindicatto/public/content-image/' || c.id ||
        '?v=' || to_char(nvl(c.image_updated_at, c.updated_at), 'YYYYMMDDHH24MISS')
    END AS image_url
    , ct.name AS ctype_name

FROM content c
LEFT JOIN ctype ct ON lower(ct.tenant_code) = lower(c.tenant_code) AND lower(ct.code) = lower(c.ctype_code)
WHERE 1 = 1
    AND lower(c.ctype_code) = lower(:code)
    AND (:tenant_code IS NULL OR lower(c.tenant_code) = lower(:tenant_code))
    AND nvl(c.status, 'published') = 'published'
ORDER BY nvl(c.sort_order, 999999), c.published_at DESC, c.id DESC
