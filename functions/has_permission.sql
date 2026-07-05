CREATE OR REPLACE FUNCTION has_permission (
    p_action_code IN varchar2
, p_page_alias IN varchar2 DEFAULT NULL
, p_actor_etype_code IN varchar2 DEFAULT NULL
, p_target_etype_code IN varchar2 DEFAULT NULL
, p_tenant_code IN varchar2 DEFAULT NULL
, p_is_dev IN number DEFAULT NULL
) RETURN boolean IS

    l_tenant_code varchar2(50);
    l_actor_etype_code varchar2(100);
    l_target_etype_code varchar2(100);
    l_page_alias varchar2(100);
    l_action_code varchar2(50);
    l_is_dev number;
    l_count number;

BEGIN

    --
    l_tenant_code := lower(coalesce(p_tenant_code, v('G_TENANT_CODE')));
    IF l_tenant_code = 'sindicatto' THEN
        RETURN TRUE;
    END IF;

    --
    l_actor_etype_code := lower(coalesce(p_actor_etype_code, v('G_ETYPE_CODE')));
    l_target_etype_code := lower(p_target_etype_code);
    l_page_alias := lower(coalesce(p_page_alias, get_current_page_alias));
    l_action_code := lower(p_action_code);
    l_is_dev := nvl(p_is_dev, nvl(to_number(v('G_IS_DEV')), 0));

    --
    IF l_tenant_code IS NULL
        OR l_actor_etype_code IS NULL
        OR l_page_alias IS NULL
        OR l_action_code IS NULL
    THEN
        RETURN FALSE;
    END IF;

    --
    SELECT count(*)
    INTO l_count
    FROM tenant_permission tp
    JOIN etype etype_actor ON lower(etype_actor.tenant_code) = lower(tp.tenant_code) AND lower(etype_actor.code) = l_actor_etype_code
    LEFT JOIN etype etype_target ON lower(etype_target.tenant_code) = lower(tp.tenant_code) AND lower(etype_target.code) = l_target_etype_code
    JOIN etype_permission ep ON lower(ep.tenant_code) = lower(tp.tenant_code) AND lower(ep.page_alias) = lower(tp.page_alias) AND lower(ep.etype_code) = lower(etype_actor.code)
    WHERE lower(tp.tenant_code) = l_tenant_code
        AND lower(tp.page_alias) = l_page_alias
        AND lower(ep.action_code) = l_action_code
        AND (nvl(etype_actor.active, 0) = 1)
        AND (nvl(ep.requires_dev, 0) = 0 OR l_is_dev = 1)
        AND (nvl(ep.active, 0) = 1)
        AND (
        l_target_etype_code IS NULL
            OR (etype_target.id IS NOT NULL
            AND nvl(etype_target.active, 0) = 1
            )
        );

    --
    RETURN l_count > 0;

EXCEPTION
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/