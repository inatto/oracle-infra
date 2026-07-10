SELECT *
FROM vw_public_content_code
WHERE 1 = 1
    AND lower(ctype_code) = lower(:code)
    AND (:tenant_code IS NULL OR lower(tenant_code) = lower(:tenant_code))
