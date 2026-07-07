DECLARE

    v_etype_code VARCHAR2(100);

BEGIN

    -- se tem apenas um, retorna o type
    v_etype_code := members_etypes_count(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD);

    -- e se tiver, ja loga
    IF v_etype_code IS NOT NULL THEN
        prc_internal_login(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD, v_etype_code, :G_ENTITY_ID);
        return true;
    END IF;

END;


select members_etypes_count(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD) from dual;