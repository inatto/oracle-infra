SELECT *
FROM sender
WHERE 1 = 1
    AND email_status <> 'active'
    AND transactional_email_status <> 'active'
;