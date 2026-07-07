CREATE OR REPLACE FUNCTION json_member(
    p_id_member IN        NUMBER DEFAULT NULL,
    p_id_pessoa IN        NUMBER DEFAULT NULL,
    p_delete IN           NUMBER DEFAULT 0,
    p_new_password_md5 IN VARCHAR2 DEFAULT NULL
) RETURN CLOB IS
    l_json CLOB;
BEGIN
    SELECT JSON_OBJECT(
            'st_action' VALUE CASE WHEN p_delete = 1 THEN 'DELETE' END,
        --
            'st_time' VALUE SYSTIMESTAMP,
            'st_tenant' VALUE m.tenant_code,
            'id_member_new' VALUE m.id,
            'id_membro' VALUE m.id_membro_old,
            'id_perfil' VALUE t.id_perfil_old,
            'id_pessoa_empresa' VALUE tt.id_pessoa_empresa_old,
            'id_config_father' VALUE tt.id_config_father_old,
        --
            'id_entity_new' VALUE e.id,
            'id_entity' VALUE e.id,
            'id_pessoa' VALUE e.id_pessoa_old,
            'id_endereco_residencial' VALUE e.id_endereco_residencial_old,
            'id_endereco_comercial' VALUE e.id_endereco_comercial_old,
        --
            'st_tag_uf_residencial' VALUE e.home_uf,
            'st_tag_uf_comercial' VALUE e.work_uf,
        --
            'st_cpf' VALUE e.br_cpf,
            'st_nome' VALUE e.name,
            'st_email' VALUE e.email,
            'dt_nascimento' VALUE TO_CHAR(birth_date, 'YYYY-MM-DD'),
            'st_celular' VALUE e.br_mobile,
            'st_new_password_md5' VALUE p_new_password_md5
           )
    INTO l_json
    FROM member m
    LEFT JOIN tenant tt ON tt.code = m.tenant_code
    LEFT JOIN entity e ON m.entity_id = e.id
    LEFT JOIN etype t ON t.code = m.etype_code AND t.tenant_code = m.tenant_code
    WHERE 1 = 1
        AND (p_id_member IS NULL OR m.id = p_id_member)
        AND (p_id_pessoa IS NULL OR e.id_pessoa_old = p_id_pessoa);

    --
    RETURN l_json;

END;
/