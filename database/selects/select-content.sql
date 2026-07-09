-- noinspection SqlConstantExpressionForFile


SELECT *
FROM content
WHERE 1 = 1
--     AND ctype_code = 'news'
--     AND subtype = 'latest-reports'
--     AND ctype = 'diretoria'
--     AND ctype = 'diretoria'
--     AND ctype = 'estatuto'
ORDER BY id DESC
;


SELECT c.id,
    c.tenant_code,
    c.ctype_code,
    c.title,
    c.contents,
    c.created_at,
    c.updated_at,
    c.published_at,
    c.image_alt,

    CASE
        WHEN c.image_url IS NOT NULL THEN
            c.image_url

        WHEN c.image_blob IS NOT NULL THEN
            '/ords/wksp_sindicatto/api/content-image/' || c.id ||
            '?v=' || to_char(nvl(c.image_updated_at, c.updated_at), 'YYYYMMDDHH24MISS')
        END AS image_url

FROM content c
ORDER BY c.published_at DESC
;

SELECT nvl(image_mime_type, 'image/jpeg') AS content_type,
    image_blob AS content
FROM content
WHERE id = :id
    AND image_blob IS NOT NULL;


SELECT dbtimezone
    , sessiontimezone
    , sysdate
    , current_date
    , systimestamp
    , current_timestamp
    , systimestamp AT TIME ZONE 'America/Sao_Paulo' AS brasilia_time
FROM dual;