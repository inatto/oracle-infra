SELECT
    tenant_code
    , page_code
    , section_code
    , role_name
    , person_name
    , image_url
    , active
FROM tenant_governance
WHERE tenant_code IN ('anpprev', 'sinproprev')
    AND page_code IN ('diretoria', 'conselho')
ORDER BY
    tenant_code
    , page_code
    , section_sort_order
    , sort_order
    , id;

SELECT
    s.person_name
    , s.role_name AS role_sinproprev
    , s.image_url AS imagem_sinproprev
    , a.role_name AS role_anpprev
    , a.image_url AS imagem_anpprev
FROM tenant_governance s
LEFT JOIN tenant_governance a
          ON a.tenant_code = 'anpprev'
              AND a.person_name = s.person_name
              AND a.active = 1
WHERE s.tenant_code = 'sinproprev'
    AND s.page_code = 'diretoria'
    AND s.active = 1
ORDER BY
    s.section_sort_order
    , s.sort_order
    , s.id;