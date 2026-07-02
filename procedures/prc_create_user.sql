CREATE OR REPLACE PROCEDURE prc_create_user (
    p_user IN VARCHAR2,
    p_email IN VARCHAR2,
    p_password IN VARCHAR2,
    p_cpf IN VARCHAR2
) IS
    v_ws_id NUMBER;

BEGIN

    --
    v_ws_id := apex_util.find_security_group_id(p_workspace => UPPER('SINDICATTO'));
    apex_util.set_security_group_id(v_ws_id);

    apex_util.create_user(
            p_user_name => p_user,
            p_email_address => p_email,
            p_web_password => p_password,
            p_web_password_format => 'CLEAR_TEXT',
            p_developer_privs => 'END_USER', -- ou 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL' para admin
            p_default_schema => 'WKSP_SINDICATTO',
            p_allow_access_to_schemas => 'WKSP_SINDICATTO',
            p_account_locked => 'N',
            p_change_password_on_first_use=> 'N',
            p_attribute_01 => p_cpf
    );

    COMMIT;
END;
/