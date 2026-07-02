CREATE OR REPLACE FUNCTION is_sindicatto
    RETURN BOOLEAN IS
BEGIN

    IF (LOWER(v('G_TENANT_CODE')) = 'sindicatto') THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;

END;
/