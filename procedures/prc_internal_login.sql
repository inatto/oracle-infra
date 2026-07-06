CREATE OR REPLACE PROCEDURE prc_internal_login (
    p_tenant_code IN varchar2
, p_user IN varchar2
, p_pass IN varchar2
, p_etype_code IN varchar2 DEFAULT NULL
, p_entity_id OUT number
) IS

    v_member_id number;
    v_entity_name varchar2(200);
    v_etype_name varchar2(100);

BEGIN

    --
    SELECT m.id, t.name, e.id, e.name
    INTO v_member_id, v_etype_name, p_entity_id, v_entity_name
    FROM vw_raw_member m
    JOIN vw_raw_entity e ON e.id = m.entity_id
    JOIN vw_raw_etype t ON t.code = m.etype_code
    WHERE 1 = 1
        AND m.active = 1
        AND e.active = 1
        AND (lower(e.br_cpf) = lower(p_user) OR lower(e.email) = lower(p_user))
        AND (p_etype_code IS NULL OR lower(m.etype_code) = lower(p_etype_code))
        AND (lower(e.md5_password) = lower(standard_hash(p_pass, 'MD5')))
        AND lower(m.tenant_code) = lower(p_tenant_code)
    ORDER BY m.id DESC FETCH FIRST 1 ROW ONLY;

    -- so define sessao se passou o login completo com etype_code
    IF (p_etype_code IS NOT NULL) THEN
        --
        apex_util.set_session_state('G_MEMBER_ID', v_member_id);
        apex_util.set_session_state('G_ENTITY_NAME', v_entity_name);
        apex_util.set_session_state('G_ETYPE_NAME', v_etype_name);
        apex_util.set_session_state('G_ETYPE_CODE', p_etype_code);

        -- sucesso com tipo
        prc_log_login(p_user, p_tenant_code, p_entity_id, p_etype_code, v_member_id, 1, '', NULL);


    ELSE

        -- sucesso sem tipo
        prc_log_login(p_user, p_tenant_code, p_entity_id, p_etype_code, NULL, 2, '', NULL);

    END IF;

EXCEPTION
    WHEN no_data_found THEN
        prc_log_login(p_user, p_tenant_code, NULL, p_etype_code, NULL, 0, 'no_data_found', sqlerrm);
        raise_application_error(-20002, 'Login inválido [NDF0].');

    WHEN too_many_rows THEN
        prc_log_login(p_user, p_tenant_code, NULL, p_etype_code, NULL, 0, 'too_many_rows', sqlerrm);
        raise_application_error(-20003, 'Login inválido [TMR+].');

    --     WHEN OTHERS THEN
    --         prc_log_login(p_user, p_tenant_code, NULL, p_etype_code, NULL, 0, 'others', SQLERRM);
    --         RAISE_APPLICATION_ERROR(-20003, 'Login inválido [OTH?].');

END;
/


DECLARE
    v_entity_id number;
BEGIN
    wksp_sindicatto.prc_internal_login(
            p_tenant_code => 'ASACLUB',
            p_user => 'dev@inatto.com',
            p_pass => 'Aviao?!1',
            p_etype_code => NULL,
            p_entity_id => v_entity_id
    );

    dbms_output.put_line('ENTITY_ID = ' || v_entity_id);
END;
/