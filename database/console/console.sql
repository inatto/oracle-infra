SELECT
    m.id,
    m.parent_id,
    p.code AS parent_code,
    m.code,
    m.label,
    m.route,
    m.active,
    CASE WHEN tp.page_alias IS NOT NULL THEN 1 ELSE 0 END AS tenant_allowed
FROM menu_item m
LEFT JOIN menu_item p
          ON p.id = m.parent_id
LEFT JOIN tenant_permission tp
          ON LOWER(tp.tenant_code) = 'anpprev'
              AND LOWER(tp.page_alias) = LOWER(m.code)
WHERE m.code IN (
                 'list-entry-admin',
                 'etype-permissions-page'
    )
ORDER BY m.sort_order;