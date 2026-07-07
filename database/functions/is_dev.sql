CREATE OR REPLACE FUNCTION is_dev
    RETURN BOOLEAN IS
    is_dev SMALLINT;
BEGIN

    -- TODO 20250630
    SELECT is_dev
    INTO is_dev
    FROM member
    WHERE 1 = 1
        AND id = v('G_MEMBER_ID');
    --         AND id = 10369

    IF (is_dev = 1) THEN
        RETURN TRUE;
    END IF;

    RETURN FALSE;

END;
/

SELECT is_dev() FROM dual;