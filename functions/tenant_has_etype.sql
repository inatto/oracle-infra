CREATE OR REPLACE FUNCTION tenant_has_etype (p_etype_code IN VARCHAR2, p_tenant_code IN VARCHAR2 DEFAULT NULL) RETURN BOOLEAN IS

    v_etype_code VARCHAR2(20);

BEGIN

    -- se nao passou etype_code, retorna true (nao restringe por etype)
    IF p_etype_code IS NULL THEN
        RETURN TRUE;
    END IF;

    -- 20260621-2240
    IF v('G_TENANT_CODE') = 'SINDICATTO' THEN
        RETURN TRUE;
    END IF;

    --
    SELECT code
    INTO v_etype_code
    FROM vw_etype
    WHERE 1 = 1
        AND (LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR LOWER(tenant_code) = LOWER(p_tenant_code))
        AND LOWER(code) = LOWER(p_etype_code);

    --
    dbms_output.put_line('[true]');
    RETURN TRUE;

    --
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('[false]');
        RETURN NULL;

END;


BEGIN

    dbms_output.put_line(TO_CHAR(tenant_has_etype('staff', 'anpprev')));

END;
/