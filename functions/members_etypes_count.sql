CREATE OR REPLACE FUNCTION members_etypes_count (
    p_tenant_code IN varchar2, p_user IN varchar2, p_pass IN varchar2
) RETURN varchar2 IS

    v_etype_code varchar2(100);
    v_total number;

BEGIN

    --
    SELECT count(*), max(m.etype_code)
    INTO v_total, v_etype_code
    FROM member m
    JOIN entity e ON e.id = m.entity_id
    WHERE 1 = 1
        AND m.active = 1
        AND e.active = 1
        AND (e.br_cpf = p_user OR e.email = p_user)
        AND e.md5_password = lower(standard_hash(p_pass, 'MD5'))
        AND lower(m.tenant_code) = lower(p_tenant_code);

    IF v_total = 1 THEN
        RETURN v_etype_code;
    ELSE
        RETURN NULL;
    END IF;

END;


-- SELECT members_etypes_count('sinproprev', 'dev@inatto.com', 'Aviao?!1sinp');
