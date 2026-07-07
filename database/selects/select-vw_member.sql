SELECT *
FROM vw_member
WHERE 1 = 1
--     AND active = 1
--     AND email = 'dev@inatto.com'
    AND etype_code = 'client'
--       AND LOWER(tenant_code) = 'asaclub'

--      AND entity_id = :G_ENTITY_ID
;



SELECT *
FROM vw_member
WHERE 1 = 1
    AND active = 1
     AND lower(tenant_code) = lower('SINPROPREV')
--     AND entity_id = :G_ENTITY_ID
;


