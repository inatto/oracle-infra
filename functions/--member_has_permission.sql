DROP FUNCTION member_has_permission;

CREATE OR REPLACE FUNCTION member_has_permission_TEMP (
    p_member_id IN number DEFAULT NULL, p_what IN varchar2 DEFAULT NULL, p_value IN varchar2 DEFAULT NULL
) RETURN boolean IS
    v_what varchar2(50);
    v_value varchar2(50);
    --
    v_tenant_code varchar2(50);
    v_etype_code varchar2(20);
    v_name varchar2(50);
    v_is_dev smallint;

BEGIN

    -- 20260621-2240
    IF v('G_TENANT_CODE') = 'SINDICATTO' THEN
        RETURN TRUE;
    END IF;

    -- pega tenant e etype do member
    SELECT lower(m.tenant_code), lower(m.etype_code), lower(e.name), is_dev
    INTO v_tenant_code, v_etype_code, v_name, v_is_dev
    FROM member m
    LEFT JOIN entity e ON e.id = m.entity_id
    WHERE m.id = nvl(p_member_id, -9999);

    --
    v_what := lower(p_what);
    v_value := lower(p_value);

    --
    IF v_what = 'is' AND v_value = 'admin' THEN RETURN v_etype_code IN ('admin');
--     ELSIF v_what = 'is' AND v_value = 'dev' THEN RETURN v_etype_code IN ('admin') AND v_is_dev = 1;
        --
    ELSIF v_what = 'see' AND v_value = 'all_members' THEN RETURN v_etype_code IN ('admin');
        -- ELSIF v_what = 'see' AND v_value = 'charts' THEN RETURN v_etype_code IN ('admin');
    ELSIF v_what = 'see' AND v_value = 'clients' THEN RETURN v_etype_code IN ('admin');
    ELSIF v_what = 'see' AND v_value = 'members' THEN RETURN v_etype_code IN ('admin', 'staff', 'staff_view');
    ELSIF v_what = 'see' AND v_value = 'associates' THEN RETURN v_etype_code IN ('admin', 'staff', 'staff_view');
    ELSIF v_what = 'see' AND v_value = 'tickets' THEN RETURN v_etype_code IN ('admin', 'staff', 'staff_view');
    ELSIF v_what = 'see' AND v_value = 'email_campaigns' THEN RETURN v_etype_code IN ('admin', 'marketing');
        --
    ELSIF v_what = 'edit' AND v_value = 'all_members' THEN RETURN v_etype_code IN ('admin');
    ELSIF v_what = 'edit' AND v_value = 'members' THEN RETURN v_etype_code IN ('admin', 'staff');
    ELSIF v_what = 'edit' AND v_value = 'associates' THEN RETURN v_etype_code IN ('admin', 'staff');
    ELSIF v_what = 'edit' AND v_value = 'tickets' THEN RETURN v_etype_code IN ('admin', 'staff');
    ELSIF v_what = 'edit' AND v_value = 'email_campaigns' THEN RETURN v_etype_code IN ('admin', 'marketing');
        --
    ELSIF v_what = 'cancel' AND v_value = 'vouchers' THEN RETURN v_etype_code IN ('admin');
    END IF;

    --
    RETURN FALSE;

EXCEPTION
    WHEN no_data_found THEN
        --         d('T.M. has no permission.' || v_etype_code);
        RETURN FALSE;

END;



-- select code, tag_perfil_old from etype;
-- admin,admin
-- partner_company,empresa-parceira
-- staff,entidade
-- customer_support,atendimento-asaclub
-- marketing,marketing
-- agreement_analyst,analista-de-convenios
-- associate,associado
-- vip_lounge_service,atendimento-vouchers
-- temporary_access,acesso-temporario
-- dependent,dependente
-- staff_view,entidade-visualizacao
