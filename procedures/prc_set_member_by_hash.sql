CREATE OR REPLACE PROCEDURE prc_set_member_by_hash (
    p_tenant_code IN varchar2, p_cpf_hash IN varchar2
) AS

    v_member_id number;
    v_entity_id number;
    v_entity_name varchar2(200);
    v_etype_name varchar2(100);
    v_etype_code varchar2(100);

BEGIN

    -- Recupera o ID do membro, Nome da Entidade (Pessoa) e Nome do Perfil
    SELECT m.id, e.name, t.name, m.etype_code, m.entity_id
    INTO v_member_id, v_entity_name, v_etype_name, v_etype_code, v_entity_id
    FROM member m
    LEFT JOIN entity e ON m.entity_id = e.id
    LEFT JOIN etype t ON t.code = m.etype_code
    WHERE 1 = 1
        AND lower(m.tenant_code) = lower(p_tenant_code)
        -- TODO 20250713 criar indice
        AND lower(standard_hash(lower(m.tenant_code) || lower(nvl(t.tag_perfil_old, '')) || nvl(e.br_cpf, dbms_random.string('X', 40)), 'SHA1')) = lower(p_cpf_hash)
        FETCH FIRST 1 ROW ONLY -- 20250706 nao poderia ter mais de 1 CPF
    ;

    --
    --     apex_util.set_session_state('G_CPF_HASH', p_cpf_hash);
    apex_util.set_session_state('G_MEMBER_ID', v_member_id);
    apex_util.set_session_state('G_ENTITY_ID', v_entity_id);
    apex_util.set_session_state('G_ENTITY_NAME', v_entity_name);
    apex_util.set_session_state('G_ETYPE_NAME', v_etype_name);
    apex_util.set_session_state('G_ETYPE_CODE', v_etype_code);

    -- debug
    --     dbms_output.put_line('p_cpf_hash: ' || p_cpf_hash);
    dbms_output.put_line('p_tenant_code: ' || p_tenant_code);
    dbms_output.put_line('v_member_id: ' || v_member_id);
    dbms_output.put_line('v_entity_name: ' || v_entity_name);
    dbms_output.put_line('v_etype_name: ' || v_etype_name);
    dbms_output.put_line('v_etype_code: ' || v_etype_code);
    dbms_output.put_line('v_entity_id: ' || v_entity_id);

EXCEPTION

    WHEN no_data_found THEN raise_application_error(-20001, 'Invalid chash.');

END;
/


BEGIN

    prc_set_member_by_hash('anpprev', '0e3ad4e052d27e996484e60f9553c4ab48e3d356');

END;
/


/*SELECT DISTINCT 1
    , LOWER(m.tenant_code) || LOWER(NVL(t.tag_perfil_old, '')) || NVL(e.br_cpf, dbms_random.string('X', 40))
    , m.*
    , e.*
    , NVL(t.tag_perfil_old, '')
    , NVL(e.br_cpf, dbms_random.string('X', 40))
    , LOWER(standard_hash(LOWER(m.tenant_code) || LOWER(NVL(t.tag_perfil_old, '')) || NVL(e.br_cpf, dbms_random.string('X', 40)), 'SHA1'))
FROM member m
LEFT JOIN entity e ON m.entity_id = e.id
LEFT JOIN etype t ON t.code = m.etype_code
WHERE 1 = 1 AND br_cpf = '01829977156'
;
*/