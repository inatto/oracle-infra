-- noinspection SqlSignatureForFile

-- atualiza tabela de pessoa com dados passados por get e token auth
CREATE OR REPLACE PROCEDURE prc_http_mail(
    p_subject IN VARCHAR2,
    p_body IN VARCHAR2,
    p_start_date IN DATE DEFAULT NULL,
    p_end_date IN DATE DEFAULT NULL,
    p_testing IN NUMBER DEFAULT 0
) IS

    --
    v_req utl_http.req;
    v_resp utl_http.resp;
    v_result VARCHAR2(4000) := '[sem resposta]';
    v_status PLS_INTEGER;
    v_raw    RAW(32767);
    v_json VARCHAR2(4000);

BEGIN

    --
    v_json := JSON_OBJECT(
            'st_tenant_email' VALUE get_email_tenant(NVL(:G_TENANT_CODE, '...'))
        , 'st_entity_name' VALUE NVL(:G_ENTITY_NAME, 'phpstorm console')
        , 'nr_testing' VALUE p_testing
        , 'tenantCode' VALUE NVL(:G_TENANT_CODE, '...')
        , 'tenantName' VALUE NVL(:G_TENANT_NAME, '...')
        , 'subject' VALUE p_subject
        , 'body' VALUE p_body
        , 'start_date' VALUE CASE WHEN p_start_date IS NOT NULL THEN TO_CHAR(p_start_date, 'YYYY-MM-DD') END
        , 'end_date' VALUE CASE WHEN p_end_date IS NOT NULL THEN TO_CHAR(p_end_date, 'YYYY-MM-DD') END
              );

    --
    v_raw := utl_i18n.string_to_raw(v_json, 'AL32UTF8');
    v_req := utl_http.begin_request('https://app.sindicatto.com/email.php', 'POST', 'HTTP/1.1');
    utl_http.set_header(v_req, 'Content-Type', 'application/json; charset=UTF-8');
    utl_http.set_header(v_req, 'Content-Length', LENGTH(v_raw));
    utl_http.set_header(v_req, 'X-Auth', '6d2a7e54f19c4b0d91c1c187b3c14a7a');
    utl_http.write_text(v_req, v_raw);

    -- Recebe resposta+

    v_resp := utl_http.get_response(v_req);
    v_status := v_resp.status_code;
    utl_http.read_text(v_resp, v_result);
    utl_http.end_response(v_resp);

    -- restringe debug
    IF SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip' THEN
        d(v_raw);
        d(v_status);
        d(v_result);
    END IF;

    -- EXCEPTION
    --     WHEN OTHERS THEN
    --         RAISE_APPLICATION_ERROR(-20001, 'Atenção: ' || SQLERRM);
END;
/

BEGIN
--     prc_http_mail('Teste de envio de email automatico - Novo cadastro de cliente (Dia-a-Dia)', 'Teste de envio de email automatico [dev-user].');
    FOR i IN 1..10 LOOP
        prc_http_mail(
            'AWS SES Test Email - Automated Sending of ' || i || ' out of 10 emails',
            'This is a test email sent by the AWS SES (Simple Email Service) automated process. It is email number ' || i || ' out of a total of 10 emails sent by the engine to test the functionality of the AWS service.'
        );
    END LOOP;
END;

BEGIN
    prc_http_mail('Teste e-mail', 'Teste de envio e-mail push');
END;