SELECT 'TENANT' AS bloco,
    'COUNT' AS campo,
    TO_CHAR(COUNT(*)) AS valor
FROM tenant
WHERE LOWER(code) = 'sinproprev'

UNION ALL

SELECT 'TENANT',
    'ACTIVE',
    TO_CHAR(active)
FROM tenant
WHERE LOWER(code) = 'sinproprev'

UNION ALL

SELECT 'CTYPE',
    'COUNT',
    TO_CHAR(COUNT(*))
FROM ctype
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(code) = 'estatuto'

UNION ALL

SELECT 'CTYPE',
    'ID',
    TO_CHAR(id)
FROM ctype
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(code) = 'estatuto'

UNION ALL

SELECT 'CTYPE',
    'NAME',
    name
FROM ctype
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(code) = 'estatuto'

UNION ALL

SELECT 'CTYPE',
    'ACTIVE',
    TO_CHAR(active)
FROM ctype
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'COUNT',
    TO_CHAR(COUNT(*))
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'PUBLISHED_COUNT',
    TO_CHAR(COUNT(*))
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'
    AND LOWER(NVL(status, 'published')) = 'published'

UNION ALL

SELECT 'CONTENT',
    'ID',
    TO_CHAR(id)
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'SUBTYPE',
    subtype
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'TITLE',
    title
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'SLUG',
    slug
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'STATUS',
    status
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'CONTENT_FORMAT',
    content_format
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'CONTENTS_LENGTH',
    CASE
        WHEN contents IS NULL THEN 'NULL'
        ELSE TO_CHAR(DBMS_LOB.GETLENGTH(contents))
        END
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'CONTENTS_INICIO',
    CASE
        WHEN contents IS NULL THEN 'NULL'
        ELSE DBMS_LOB.SUBSTR(contents, 500, 1)
        END
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'SOURCE_URL',
    source_url
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'IMAGE_URL',
    image_url
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'SORT_ORDER',
    TO_CHAR(sort_order)
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'CREATED_AT',
    TO_CHAR(created_at, 'YYYY-MM-DD HH24:MI:SS')
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'UPDATED_AT',
    TO_CHAR(updated_at, 'YYYY-MM-DD HH24:MI:SS')
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

UNION ALL

SELECT 'CONTENT',
    'PUBLISHED_AT',
    TO_CHAR(published_at, 'YYYY-MM-DD HH24:MI:SS')
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'

ORDER BY 1, 2;