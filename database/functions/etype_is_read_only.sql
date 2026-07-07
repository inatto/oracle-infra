CREATE OR REPLACE FUNCTION etype_is_read_only (
    p_member_id IN NUMBER DEFAULT NULL
) RETURN BOOLEAN IS
    v_read_only NUMBER(1);
BEGIN

    -- pega se é read_only
    SELECT t.read_only
    INTO v_read_only
    FROM member m
    LEFT JOIN etype t ON t.code = m.etype_code
    WHERE 1 = 1
        AND m.id = p_member_id
        AND NVL(t.read_only, 0) = 1;

    RETURN TRUE;

EXCEPTION
    WHEN no_data_found THEN
        RETURN FALSE;

END;


BEGIN

    dbms_output.put_line(TO_CHAR(etype_is_read_only(3839)));

END;
/