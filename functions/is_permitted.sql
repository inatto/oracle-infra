CREATE OR REPLACE FUNCTION is_permitted (
    p_page_alias IN varchar2
, p_etype_code IN varchar2
, p_member_id IN number DEFAULT NULL
, p_what IN varchar2 DEFAULT NULL
, p_value IN varchar2 DEFAULT NULL
, p_tenant_code IN varchar2 DEFAULT NULL
) RETURN boolean IS


BEGIN

    -- 20260621-2240
    IF v('G_TENANT_CODE') = 'SINDICATTO' THEN
        RETURN TRUE;
    END IF;

    --
    RETURN 1 = 1
        -- tenant pode acessar a pagina?
        AND tenant_has_permission(p_page_alias, p_tenant_code)
        -- tentant tem o etype do usuario?
        AND tenant_has_etype(p_etype_code, p_tenant_code)
        -- membro pode realizar a acao?
        AND member_has_permission(p_member_id, p_what, p_value);

END;
/


-- return is_permitted('cancelar-voucher', null, :G_MEMBER_ID, 'cancel', 'vouchers');
-- SELECT is_permitted('members', NULL, :G_MEMBER_ID, 'see', 'members') FROM dual;
-- 6921 andre anpprev
SELECT is_permitted('processos', 'admin', 6921, 'is', 'admin', 'anpprev') FROM dual;
SELECT is_permitted('relatorio-de-envios', 'admin', 10369, 'is', 'admin', 'asaclub') FROM dual;
SELECT is_permitted('contents', null, :G_MEMBER_ID, 'is', 'admin') FROM dual;