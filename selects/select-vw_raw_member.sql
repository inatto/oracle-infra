SELECT *
FROM vw_raw_member
WHERE 1 = 1
    AND lower(tenant_code) = 'asaclub'
--     AND lower(nvl(email, '#SEM_EMAIL#')) <> 'marketingasaclub26@gmail.com'
--     AND lower(etype_code) = 'marketing'
--     AND entity_id = :G_ENTITY_ID
--     AND active = 1
--     AND created_at < DATE '2026-06-27'
--     AND created_at >= DATE '2026-06-26'
--     AND email = 'dev@inatto.com'
--     AND email LIKE '%asaclub%'
--     AND etype_code = 'admin'
--     AND etype_code = 'associate'
--     AND internal_tag <> 'pyimpor2t'
--     AND lower(tenant_code) = 'asaclub'
--     AND tenant_code = 'ADPF'
ORDER BY tenant_code
    , etype_code
    , id
;


DELETE
FROM member m
WHERE m.id IN (SELECT v.id
               FROM vw_raw_member v
               WHERE 1 = 1
                   AND lower(tenant_code) = 'asaclub'
                   AND lower(etype_code) = 'vip_lounge_service');

DELETE
FROM member m
WHERE m.id IN (62792)
;



