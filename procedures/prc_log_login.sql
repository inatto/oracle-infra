CREATE OR REPLACE PROCEDURE prc_log_login (
    p_user IN        VARCHAR2,
    p_tenant_code IN VARCHAR2,
    p_entity_id IN   NUMBER DEFAULT NULL,
    p_etype_code IN  VARCHAR2,
    p_member_id IN   NUMBER DEFAULT NULL,
    p_success IN     NUMBER,
    p_error_code IN  VARCHAR2,
    p_sql_error IN   VARCHAR2 DEFAULT NULL
) IS
BEGIN
    INSERT INTO login_log (
        login_user, tenant_code, etype_code, success, error_code, ip_address, user_agent, entity_id, member_id, sql_error
    )
    VALUES (
        p_user, p_tenant_code, p_etype_code, p_success, p_error_code, owa_util.get_cgi_env('REMOTE_ADDR'), owa_util.get_cgi_env('HTTP_USER_AGENT'), p_entity_id, p_member_id, p_sql_error
    );
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Log failed: ' || SQLERRM);
END;
/
