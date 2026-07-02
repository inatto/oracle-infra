CREATE OR REPLACE VIEW wksp_sindicatto.vw_email_queue_to_send AS
SELECT 1 AS flag_send
    , q.id
    , q.email_campaign_id
    , q.email
    , q.name
    , q.member_insert_date
    , q.status
--     , c.from_name AS fromname
--     , c.from_email AS fromemail
    , c.subject
    , c.body_html
FROM email_queue q
LEFT JOIN email_campaign c ON c.id = q.email_campaign_id
WHERE 1 = 1
    AND q.status = 'pending'
    AND q.email_campaign_id IN (0361)
    AND q.email IS NOT NULL
    AND NOT exists (SELECT 1
                    FROM wksp_sindicatto.email_blacklist b
                    WHERE lower(trim(b.email)) = lower(trim(q.email)))
    AND q.email IN ('inattox@gmail.com', 'danielmaiax@gmail.com', 'dev@inatto.com', 'sindicattox@gmail.com')
ORDER BY q.priority
    , q.member_insert_date DESC
    , q.id DESC
-- FETCH FIRST 1 ROW ONLY
;

SELECT *
FROM vw_email_queue_to_send
ORDER BY id DESC
;

