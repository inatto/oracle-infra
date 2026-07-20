-- atualiza tabela de pessoa com dados passados por get e token auth
CREATE OR REPLACE PROCEDURE prc_http_voucher_cancel(p_codigo IN VARCHAR2, p_force IN PLS_INTEGER) IS
    v_req    utl_http.req;
    v_resp   utl_http.resp;
    v_result VARCHAR2(4000) := '[sem resposta]';
    v_body   VARCHAR2(4000);
    v_status PLS_INTEGER;
BEGIN

    -- 1) cria json
    v_body := '{"action":"update", "codigo":"' || p_codigo || '", "force": ' || p_force || '}';

    -- 2) cria requisição POST
    v_req := utl_http.begin_request(
            'https://app.sindicatto.com/post.php',
            'POST',
            'HTTP/1.1'
             );

    -- Headers obrigatórios
    utl_http.set_header(v_req, 'Content-Type', 'application/json');
    utl_http.set_header(v_req, 'Content-Length', LENGTH(v_body));
    utl_http.set_header(v_req, 'X-Auth', '6d2a7e54f19c4b0d91c1c187b3c14a7a');

    -- Envia JSON no corpo
    utl_http.write_text(v_req, v_body);

    -- Recebe resposta
    v_resp := utl_http.get_response(v_req);
    v_status := v_resp.status_code;
    utl_http.read_text(v_resp, v_result);
    utl_http.end_response(v_resp);

    -- restringe debug
    IF SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip' THEN
        d(v_body);
        d(v_status);
        d(v_result);
    END IF;

    --
    IF v_status = 200 THEN
        prc_http_mail('Voucher ' || p_codigo || ' cancelado por ' || NVL(v('G_ENTITY_NAME'), '[terminal]'), NVL(JSON_VALUE(v_result, '$.mensagem'), 'Consulte mais detalhes no sistema.'));
    ELSE
        RAISE_APPLICATION_ERROR(-20001, '❌' || v_status || ': ' || JSON_VALUE(v_result, '$.mensagem'));
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Atenção: ' || SQLERRM);
END;
/

BEGIN
    prc_http_voucher_cancel('ASADZ8HKEDU', 1);
END;