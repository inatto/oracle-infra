select * from vw_public_content_id
WHERE 1 = 1
    AND c.id = :id
    AND (:tenant_code IS NULL OR lower(c.tenant_code) = lower(:tenant_code))