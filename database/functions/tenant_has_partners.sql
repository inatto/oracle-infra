CREATE OR REPLACE FUNCTION tenant_has_partners RETURN NUMBER IS

    v_count NUMBER;

BEGIN

    -- verifica se o tenant possui parceiros
    SELECT COUNT(*)
    INTO v_count
    FROM mv_partnership_partners
    WHERE parent_code = v('G_TENANT_CODE');

    --
    d(v_count);
    RETURN v_count;

    --
EXCEPTION
    WHEN no_data_found THEN
        RETURN NULL;

END;


BEGIN

    dbms_output.put_line(TO_CHAR(tenant_has_partners()));

END;
/