CREATE OR REPLACE VIEW vw_sender_invalid AS
SELECT *
FROM sender
WHERE 1 = 1
    AND email_status <> 'active'
    AND transactional_email_status <> 'active'
ORDER BY email
/

SELECT *
FROM vw_sender_invalid
/