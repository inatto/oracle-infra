CREATE OR REPLACE PROCEDURE prc_set_tenant (p_tenant_code IN varchar2, p_cpf_hash IN varchar2 DEFAULT NULL) AS
    v_tid number;
    v_cookie owa_cookie.COOKIE;
    v_tenant_code varchar2(100);
    v_tenant_name varchar2(100);
BEGIN

    -- 1) ID Tenant por parametro? Prioritario
    IF (p_tenant_code IS NOT NULL) THEN
        owa_cookie.remove('COOKIE_TENANT_ID', v_tid, '/ords');
        SELECT id INTO v_tid FROM tenant WHERE lower(code) = lower(p_tenant_code);
    END IF;

    -- 2) ID Tenant por cookie?
    -- se v_tid for nulo, tenta pegar v_cookie - NAO RODA NO CONSOLE/DATAGRIP
    v_cookie := owa_cookie.get('COOKIE_TENANT_ID');
    IF v_tid IS NULL AND v_cookie.vals.count > 0 THEN
        v_tid := v_cookie.vals(1);
    END IF;

    -- 3) Nao tem cookie nem param, pega default
    IF v_tid IS NULL THEN
        SELECT id INTO v_tid FROM tenant WHERE lower(code) = 'sindicatto';
    END IF;

    -- seta v_cookie com o v_tid atual - path /ords é parte da chave do cookie (Ver F12 - 20250626)
    owa_cookie.send('COOKIE_TENANT_ID', v_tid, NULL, '/ords');

    -- busca do banco
    BEGIN

        --
        SELECT id, code, name INTO v_tid, v_tenant_code, v_tenant_name FROM tenant WHERE id = v_tid;

        -- 20250703 login cpf
        IF (p_cpf_hash IS NOT NULL) THEN
            prc_set_member_by_hash(v_tenant_code, p_cpf_hash);
        END IF;

        --
        apex_util.set_session_state('G_TENANT_ID', v_tid);
        apex_util.set_session_state('G_TENANT_CODE', v_tenant_code);
        apex_util.set_session_state('G_TENANT_CODE_LOWER', lower(v_tenant_code));
        apex_util.set_session_state('G_TENANT_NAME', v_tenant_name);

    EXCEPTION
        WHEN no_data_found THEN
            raise_application_error(-20001, 'Invalid tenant.');
    END;

END;
/