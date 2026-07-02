CREATE OR REPLACE PROCEDURE prc_http_entity_pwchange(p_json IN CLOB) IS
    v_raw          RAW(32767);
    v_req          utl_http.req;
    v_resp         utl_http.resp;
    v_status       PLS_INTEGER;
    v_result       VARCHAR2(4000);
    --
    v_password_md5 VARCHAR2(32);
    v_id_entity    NUMBER;

BEGIN

    --
    v_raw := utl_i18n.string_to_raw(p_json, 'AL32UTF8');

    -- 2) cria requisição POST
    v_req := utl_http.begin_request('https://app.sindicatto.com/http_entity_pwchange.php', 'POST', 'HTTP/1.1');
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

    -- atualiza senha oracle
    BEGIN
        SELECT JSON_VALUE(p_json, '$.st_new_password_md5'), JSON_VALUE(p_json, '$.id_entity') INTO v_password_md5, v_id_entity FROM dual;
        UPDATE entity SET md5_password = lower(v_password_md5) WHERE id = v_id_entity;
    EXCEPTION
        WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002, 'Erro ao atualizar senha: ' || SQLERRM);
    END;


    -- restringe debug
    IF SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip' THEN
        d(p_json);
        d(v_status);
        d(v_result);
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Erro: ' || SQLERRM || v_result);
END;
/

--
DECLARE
    lhash VARCHAR2(32);
    ljson CLOB;
BEGIN

    SELECT LOWER(standard_hash('123', 'MD5')) INTO lhash FROM dual;
    ljson := json_member(10369, NULL, NULL, lhash);
    prc_http_entity_pwchange(ljson);

END;