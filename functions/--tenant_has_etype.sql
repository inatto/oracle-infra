DROP FUNCTION tenant_has_etype;

/*

CREATE OR REPLACE FUNCTION tenant_has_etype (p_etype_code IN varchar2, p_tenant_code IN varchar2 DEFAULT NULL) RETURN boolean IS

v_etype_code varchar2(20);

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
        AND (lower(tenant_code) = lower(v('G_TENANT_CODE')) OR lower(tenant_code) = lower(p_tenant_code))
        AND lower(code) = lower(p_etype_code);

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

    dbms_output.put_line(to_char(tenant_has_etype('staff', 'anpprev')));

END;
/
*/
