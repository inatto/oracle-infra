CREATE OR REPLACE FUNCTION tenant_has_permission(p_page_alias IN VARCHAR2, p_tenant_code IN VARCHAR2 DEFAULT NULL) RETURN BOOLEAN IS

    v_dummy NUMBER;

BEGIN

    -- 20260621-2240
    IF v('G_TENANT_CODE') = 'SINDICATTO' THEN
        RETURN TRUE;
    END IF;

    -- verifica se o tenant possui permissao para page (pegando pelo alias)
    SELECT 1
    INTO v_dummy
    FROM tenant_permission
    WHERE 1 = 1
        AND (LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR LOWER(tenant_code) = LOWER(p_tenant_code))
        AND LOWER(page_alias) = LOWER(p_page_alias);

    --
    RETURN TRUE;

    --
EXCEPTION
    WHEN no_data_found THEN
        RETURN FALSE;

END;


BEGIN

    dbms_output.put_line(TO_CHAR(tenant_has_permission('cancelar-voucher', 'anpprev')));

END;
/