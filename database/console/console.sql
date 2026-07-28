SELECT tenant_code,
    area_code,
    item_code,
    sort_order,
    active
FROM tenant_navigation
WHERE tenant_code = 'anpprev'
    AND area_code = 'institutional'
ORDER BY sort_order;

INSERT INTO tenant_navigation (
    tenant_code,
    area_code,
    item_code,
    sort_order,
    active
)
VALUES (
    'anpprev',
    'institutional',
    'estatuto',
    12,
    1
);