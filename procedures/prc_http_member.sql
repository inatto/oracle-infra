-- noinspection SqlSignatureForFile

-- atualiza tabela de pessoa com dados passados por get e token auth
CREATE OR REPLACE PROCEDURE prc_http_member(p_json IN CLOB) IS
    v_raw    RAW(32767);
    v_req    utl_http.req;
    v_resp   utl_http.resp;
    v_status PLS_INTEGER;
    v_result VARCHAR2(4000);
BEGIN

    -- 20250706 !!
--     dd(p_json);
    v_raw := utl_i18n.string_to_raw(p_json, 'AL32UTF8');

    -- 2) cria requisição POST
    v_req := utl_http.begin_request('https://app.sindicatto.com/entry.php', 'POST', 'HTTP/1.1');
    utl_http.set_header(v_req, 'Content-Type', 'application/json; charset=UTF-8');
    utl_http.set_header(v_req, 'Content-Length', LENGTH(v_raw));
    utl_http.set_header(v_req, 'X-Auth', '6d2a7e54f19c4b0d91c1c187b3c14a7a');
    utl_http.set_body_charset('UTF-8');
    utl_http.write_text(v_req, v_raw);

    -- Recebe resposta
    v_resp := utl_http.get_response(v_req);
    v_status := v_resp.status_code;
    utl_http.read_text(v_resp, v_result);
    utl_http.end_response(v_resp);

    --
    UPDATE member
    SET id_membro_old           = NVL(JSON_VALUE(v_result, '$.id_membro'), id_membro_old)
        , id_pessoa_old         = NVL(JSON_VALUE(v_result, '$.id_pessoa'), id_pessoa_old)
        , id_pessoa_empresa_old = NVL(JSON_VALUE(v_result, '$.id_pessoa_empresa'), id_pessoa_empresa_old)
    WHERE id = JSON_VALUE(p_json, '$.id_member_new');

    -- atualiza ids old entity
    UPDATE entity
    SET id_pessoa_old                 = NVL(JSON_VALUE(v_result, '$.id_pessoa'), id_pessoa_old)
        , id_endereco_residencial_old = NVL(JSON_VALUE(v_result, '$.id_residencial'), id_endereco_residencial_old)
        , id_endereco_comercial_old   = NVL(JSON_VALUE(v_result, '$.id_comercial'), id_endereco_comercial_old)
    WHERE id = JSON_VALUE(p_json, '$.id_entity_new');

    -- restringe debug
    IF SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip' THEN
        d(p_json);
        d(v_status);
        d(v_result);
    END IF;

-- EXCEPTION
--     WHEN OTHERS THEN
--         RAISE_APPLICATION_ERROR(-20001, 'Erro: ' || SQLERRM || v_result);
END;
/

--
/*
DECLARE
    ljson CLOB;

BEGIN
    ljson := json_member(25460);
    prc_http_member(ljson);
END;*/
