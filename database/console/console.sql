SELECT
    id
    , tenant_code
    , ctype_code
    , subtype
    , title
    , slug
    , status
    , DBMS_LOB.GETLENGTH(contents) contents_length
    , source_url
    , created_at
    , updated_at
    , published_at
FROM content
WHERE LOWER(tenant_code) = 'sinproprev'
    AND LOWER(ctype_code) = 'estatuto'
ORDER BY id DESC;