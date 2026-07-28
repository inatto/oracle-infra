SELECT tenant_code,
    menu_group,
    item_key,
    display_order,
    active
FROM tenant_navigation
WHERE tenant_code = 'anpprev'
    AND menu_group = 'institutional'
ORDER BY display_order;