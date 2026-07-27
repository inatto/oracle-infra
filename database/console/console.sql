-- SOMENTE ADICIONA TENANT_CODE ONDE NÃO EXISTE
-- NÃO ATUALIZA DADOS
-- NÃO CRIA ÍNDICES
-- NÃO REMOVE NADA
-- IDPOTENTE

DECLARE
    PROCEDURE add_tenant_code(p_table_name VARCHAR2) IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_count
        FROM ALL_TAB_COLUMNS
        WHERE OWNER = SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA')
            AND TABLE_NAME = UPPER(p_table_name)
            AND COLUMN_NAME = 'TENANT_CODE';

        IF v_count = 0 THEN
            EXECUTE IMMEDIATE
                'ALTER TABLE ' ||
                    DBMS_ASSERT.SQL_OBJECT_NAME(p_table_name) ||
                    ' ADD (TENANT_CODE VARCHAR2(50))';

            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-column] CRIADO: ' ||
                        UPPER(p_table_name) ||
                        '.TENANT_CODE'
            );
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-column] EXISTENTE: ' ||
                        UPPER(p_table_name) ||
                        '.TENANT_CODE'
            );
        END IF;
    END;
BEGIN
    add_tenant_code('ENTITY_CONTACT');
    add_tenant_code('ADDRESS');
    add_tenant_code('BR_SITUACAO_FUNCIONAL');
    add_tenant_code('BR_SITUACAO_ASSOCIATIVA');
    add_tenant_code('BR_CARREIRA');
END;
/