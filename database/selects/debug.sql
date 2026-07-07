BEGIN
    apex_debug.enable(p_level => 9);
END;


SELECT *
FROM apex_debug_messages
WHERE 1 = 1
    AND application_id = 102
    AND page_id = 9999
--     AND message LIKE '%v_tenant_code%'
--     AND message LIKE '%Form%'
-- WHERE session_id = :APP_SESSION
ORDER BY id DESC;



SELECT *
FROM apex_application_page_proc
WHERE 1 = 1
    AND application_id = 102
    AND page_id = 8
--   AND process_type = 'DML'
;
