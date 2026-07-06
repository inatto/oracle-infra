CREATE OR REPLACE FUNCTION get_email_tenant (
    p_tenant_code IN VARCHAR2 DEFAULT NULL
) RETURN STRING IS
    v_email VARCHAR2(255);
BEGIN

    --
    SELECT email
    INTO v_email
    FROM tenant
    WHERE LOWER(code) = LOWER(p_tenant_code);

    --
    RETURN v_email;

END;


BEGIN

    dbms_output.put_line(get_email_tenant('ANPPREV'));

END;
/

SELECT * FROM tenant;