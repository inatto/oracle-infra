SELECT
    p.tenant_code
    , p.parent_code
    , p.role
    , t1.name AS tenant_name
    , t2.name AS parent_name
FROM partnership p
JOIN tenant t1
     ON t1.code = p.tenant_code
JOIN tenant t2
     ON t2.code = p.parent_code
WHERE p.tenant_code IN ('sinproprev', 'anpprev')
    OR p.parent_code IN ('sinproprev', 'anpprev')
ORDER BY
    p.tenant_code
    , p.parent_code;

INSERT INTO partnership (
    tenant_code
, parent_code
, role
)
SELECT
    'anpprev'
    , 'sinproprev'
    , 'partner'
FROM dual
WHERE NOT EXISTS (
    SELECT 1
    FROM partnership
    WHERE tenant_code = 'anpprev'
        AND parent_code = 'sinproprev'
);