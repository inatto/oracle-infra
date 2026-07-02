CREATE OR REPLACE FUNCTION tenant_has_lawsuits RETURN NUMBER IS

    v_count NUMBER;

BEGIN

    -- verifica se o tenant possui parceiros
    SELECT COUNT(*)
    INTO v_count
    FROM vw_processo_br_grouped
    WHERE 1
        -- TODO 20250722 fixo anp
        AND LOWER(v('G_TENANT_CODE')) = 'anpprev';

    --
    d(v_count);
    RETURN v_count;

    --
EXCEPTION
    WHEN no_data_found THEN
        RETURN NULL;

END;


BEGIN

    dbms_output.put_line(TO_CHAR(tenant_has_lawsuits()));

END;
/