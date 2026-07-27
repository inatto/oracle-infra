-- CONTEXTO PEOPLE: ISOLAMENTO MULTI-TENANT
-- Oracle / WKSP_SINDICATTO
-- Idempotente
--
-- Adiciona TENANT_CODE onde os registros precisam ser isolados:
--   ENTITY_CONTACT
--   ADDRESS
--   BR_SITUACAO_FUNCIONAL
--   BR_SITUACAO_ASSOCIATIVA
--   BR_CARREIRA
--
-- ENTITY, MEMBER e ETYPE já possuem TENANT_CODE.
--
-- Regra:
--   - contatos e endereços herdam o tenant da ENTITY;
--   - cadastros BR com ID_*_OLD são da migração ASACLUB;
--   - registros genéricos sem origem antiga continuam com TENANT_CODE NULL;
--   - índices antigos globais por ID_*_OLD são substituídos por índices por tenant.

DECLARE
    PROCEDURE add_column_if_missing(
        p_table  VARCHAR2,
        p_column VARCHAR2,
        p_type   VARCHAR2
    ) IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_count
        FROM USER_TAB_COLUMNS
        WHERE TABLE_NAME = UPPER(p_table)
            AND COLUMN_NAME = UPPER(p_column);

        IF v_count = 0 THEN
            EXECUTE IMMEDIATE
                'ALTER TABLE ' || DBMS_ASSERT.SQL_OBJECT_NAME(p_table) ||
                    ' ADD (' || DBMS_ASSERT.SIMPLE_SQL_NAME(p_column) ||
                    ' ' || p_type || ')';

            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-context] CRIADO: ' || p_table || '.' || p_column
            );
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-context] EXISTENTE: ' || p_table || '.' || p_column
            );
        END IF;
    END;

    PROCEDURE drop_index_if_exists(
        p_index VARCHAR2
    ) IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_count
        FROM USER_INDEXES
        WHERE INDEX_NAME = UPPER(p_index);

        IF v_count > 0 THEN
            EXECUTE IMMEDIATE
                'DROP INDEX ' || DBMS_ASSERT.SQL_OBJECT_NAME(p_index);

            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-context] REMOVIDO: ' || p_index
            );
        END IF;
    END;

    PROCEDURE create_index_if_missing(
        p_index VARCHAR2,
        p_sql   VARCHAR2
    ) IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_count
        FROM USER_INDEXES
        WHERE INDEX_NAME = UPPER(p_index);

        IF v_count = 0 THEN
            EXECUTE IMMEDIATE p_sql;

            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-context] CRIADO: ' || p_index
            );
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                    '[tenant-context] EXISTENTE: ' || p_index
            );
        END IF;
    END;
BEGIN
    --------------------------------------------------------------------------
    -- COLUNAS
    --------------------------------------------------------------------------

    add_column_if_missing(
            'ENTITY_CONTACT',
            'TENANT_CODE',
            'VARCHAR2(50)'
    );

    add_column_if_missing(
            'ADDRESS',
            'TENANT_CODE',
            'VARCHAR2(50)'
    );

    add_column_if_missing(
            'BR_SITUACAO_FUNCIONAL',
            'TENANT_CODE',
            'VARCHAR2(50)'
    );

    add_column_if_missing(
            'BR_SITUACAO_ASSOCIATIVA',
            'TENANT_CODE',
            'VARCHAR2(50)'
    );

    add_column_if_missing(
            'BR_CARREIRA',
            'TENANT_CODE',
            'VARCHAR2(50)'
    );

    --------------------------------------------------------------------------
    -- BACKFILL: CONTATOS HERDAM O TENANT DA ENTITY
    --------------------------------------------------------------------------

    UPDATE ENTITY_CONTACT contact
    SET contact.TENANT_CODE = (
        SELECT entity.TENANT_CODE
        FROM ENTITY entity
        WHERE entity.ID = contact.ENTITY_ID
    )
    WHERE contact.TENANT_CODE IS NULL
        AND EXISTS (
        SELECT 1
        FROM ENTITY entity
        WHERE entity.ID = contact.ENTITY_ID
            AND entity.TENANT_CODE IS NOT NULL
    );

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] ENTITY_CONTACT atualizados=' || SQL%ROWCOUNT
    );

    --------------------------------------------------------------------------
    -- BACKFILL: ENDEREÇOS HERDAM O TENANT DA ENTITY
    --------------------------------------------------------------------------

    UPDATE ADDRESS address
    SET address.TENANT_CODE = (
        SELECT entity.TENANT_CODE
        FROM ENTITY entity
        WHERE entity.ID = address.ENTITY_ID
    )
    WHERE address.TENANT_CODE IS NULL
        AND EXISTS (
        SELECT 1
        FROM ENTITY entity
        WHERE entity.ID = address.ENTITY_ID
            AND entity.TENANT_CODE IS NOT NULL
    );

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] ADDRESS atualizados=' || SQL%ROWCOUNT
    );

    --------------------------------------------------------------------------
    -- BACKFILL: IDs OLD CRIADOS PARA A MIGRAÇÃO ASACLUB
    --
    -- Não altera registros genéricos sem ID legado.
    --------------------------------------------------------------------------

    UPDATE BR_SITUACAO_FUNCIONAL
    SET TENANT_CODE = 'asaclub'
    WHERE TENANT_CODE IS NULL
        AND ID_STATUSCARREIRA_OLD IS NOT NULL;

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] BR_SITUACAO_FUNCIONAL atualizados=' ||
                SQL%ROWCOUNT
    );

    UPDATE BR_SITUACAO_ASSOCIATIVA
    SET TENANT_CODE = 'asaclub'
    WHERE TENANT_CODE IS NULL
        AND ID_STATUSASSOCIATIVO_OLD IS NOT NULL;

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] BR_SITUACAO_ASSOCIATIVA atualizados=' ||
                SQL%ROWCOUNT
    );

    UPDATE BR_CARREIRA
    SET TENANT_CODE = 'asaclub'
    WHERE TENANT_CODE IS NULL
        AND ID_CARREIRASERVIDOR_OLD IS NOT NULL;

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] BR_CARREIRA atualizados=' ||
                SQL%ROWCOUNT
    );

    --------------------------------------------------------------------------
    -- REMOVER ÍNDICES GLOBAIS ANTIGOS
    --
    -- Esses índices impediriam reutilizar o mesmo ID legado em outra tenant.
    --------------------------------------------------------------------------

    drop_index_if_exists('UK_BR_SIT_FUNC_STATUS_OLD');
    drop_index_if_exists('UK_BR_SIT_ASSOC_STATUS_OLD');
    drop_index_if_exists('UK_BR_CARREIRA_OLD');

    --------------------------------------------------------------------------
    -- ÍNDICES MULTI-TENANT
    --------------------------------------------------------------------------

    create_index_if_missing(
            'UK_BR_SIT_FUNC_TENANT_OLD',
            '
            CREATE UNIQUE INDEX UK_BR_SIT_FUNC_TENANT_OLD
                ON BR_SITUACAO_FUNCIONAL (
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_STATUSCARREIRA_OLD IS NOT NULL
                        THEN TENANT_CODE
                    END,
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_STATUSCARREIRA_OLD IS NOT NULL
                        THEN ID_STATUSCARREIRA_OLD
                    END
                )
            '
    );

    create_index_if_missing(
            'UK_BR_SIT_ASSOC_TENANT_OLD',
            '
            CREATE UNIQUE INDEX UK_BR_SIT_ASSOC_TENANT_OLD
                ON BR_SITUACAO_ASSOCIATIVA (
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_STATUSASSOCIATIVO_OLD IS NOT NULL
                        THEN TENANT_CODE
                    END,
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_STATUSASSOCIATIVO_OLD IS NOT NULL
                        THEN ID_STATUSASSOCIATIVO_OLD
                    END
                )
            '
    );

    create_index_if_missing(
            'UK_BR_CARREIRA_TENANT_OLD',
            '
            CREATE UNIQUE INDEX UK_BR_CARREIRA_TENANT_OLD
                ON BR_CARREIRA (
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_CARREIRASERVIDOR_OLD IS NOT NULL
                        THEN TENANT_CODE
                    END,
                    CASE
                        WHEN TENANT_CODE IS NOT NULL
                         AND ID_CARREIRASERVIDOR_OLD IS NOT NULL
                        THEN ID_CARREIRASERVIDOR_OLD
                    END
                )
            '
    );

    create_index_if_missing(
            'IX_ENTITY_CONTACT_TENANT',
            '
            CREATE INDEX IX_ENTITY_CONTACT_TENANT
                ON ENTITY_CONTACT (
                    TENANT_CODE,
                    ENTITY_ID
                )
            '
    );

    create_index_if_missing(
            'IX_ADDRESS_TENANT_ENTITY',
            '
            CREATE INDEX IX_ADDRESS_TENANT_ENTITY
                ON ADDRESS (
                    TENANT_CODE,
                    ENTITY_ID
                )
            '
    );

    create_index_if_missing(
            'IX_ADDRESS_TENANT_OLD',
            '
            CREATE INDEX IX_ADDRESS_TENANT_OLD
                ON ADDRESS (
                    TENANT_CODE,
                    ID_ENDERECO_OLD
                )
            '
    );

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
            '[tenant-context] COMMIT_OK'
    );
END;
/

-------------------------------------------------------------------------------
-- VALIDAÇÃO
-------------------------------------------------------------------------------

SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    DATA_LENGTH,
    NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME IN (
                     'ENTITY',
                     'ENTITY_CONTACT',
                     'ADDRESS',
                     'ETYPE',
                     'MEMBER',
                     'BR_SITUACAO_FUNCIONAL',
                     'BR_SITUACAO_ASSOCIATIVA',
                     'BR_CARREIRA'
    )
    AND COLUMN_NAME = 'TENANT_CODE'
ORDER BY TABLE_NAME;

SELECT
    TENANT_CODE,
    COUNT(*) AS TOTAL
FROM ENTITY_CONTACT
GROUP BY TENANT_CODE
ORDER BY TENANT_CODE;

SELECT
    TENANT_CODE,
    COUNT(*) AS TOTAL
FROM ADDRESS
GROUP BY TENANT_CODE
ORDER BY TENANT_CODE;

SELECT
    TENANT_CODE,
    COUNT(*) AS TOTAL
FROM BR_SITUACAO_FUNCIONAL
GROUP BY TENANT_CODE
ORDER BY TENANT_CODE;

SELECT
    TENANT_CODE,
    COUNT(*) AS TOTAL
FROM BR_SITUACAO_ASSOCIATIVA
GROUP BY TENANT_CODE
ORDER BY TENANT_CODE;

SELECT
    TENANT_CODE,
    COUNT(*) AS TOTAL
FROM BR_CARREIRA
GROUP BY TENANT_CODE
ORDER BY TENANT_CODE;

SELECT
    INDEX_NAME,
    TABLE_NAME,
    UNIQUENESS,
    STATUS
FROM USER_INDEXES
WHERE INDEX_NAME IN (
                     'UK_BR_SIT_FUNC_TENANT_OLD',
                     'UK_BR_SIT_ASSOC_TENANT_OLD',
                     'UK_BR_CARREIRA_TENANT_OLD',
                     'IX_ENTITY_CONTACT_TENANT',
                     'IX_ADDRESS_TENANT_ENTITY',
                     'IX_ADDRESS_TENANT_OLD'
    )
ORDER BY INDEX_NAME;

-------------------------------------------------------------------------------
-- VERIFICAÇÃO DE VAZAMENTO
--
-- O resultado esperado para cada consulta é zero linhas.
-------------------------------------------------------------------------------

SELECT
    contact.ID,
    contact.TENANT_CODE AS CONTACT_TENANT,
    entity.TENANT_CODE AS ENTITY_TENANT
FROM ENTITY_CONTACT contact
JOIN ENTITY entity
     ON entity.ID = contact.ENTITY_ID
WHERE NVL(contact.TENANT_CODE, '#NULL#')
        <> NVL(entity.TENANT_CODE, '#NULL#');

SELECT
    address.ID,
    address.TENANT_CODE AS ADDRESS_TENANT,
    entity.TENANT_CODE AS ENTITY_TENANT
FROM ADDRESS address
JOIN ENTITY entity
     ON entity.ID = address.ENTITY_ID
WHERE NVL(address.TENANT_CODE, '#NULL#')
        <> NVL(entity.TENANT_CODE, '#NULL#');

SELECT
    TENANT_CODE,
    ID_STATUSCARREIRA_OLD,
    COUNT(*) AS TOTAL
FROM BR_SITUACAO_FUNCIONAL
WHERE TENANT_CODE IS NOT NULL
    AND ID_STATUSCARREIRA_OLD IS NOT NULL
GROUP BY
    TENANT_CODE,
    ID_STATUSCARREIRA_OLD
HAVING COUNT(*) > 1;

SELECT
    TENANT_CODE,
    ID_STATUSASSOCIATIVO_OLD,
    COUNT(*) AS TOTAL
FROM BR_SITUACAO_ASSOCIATIVA
WHERE TENANT_CODE IS NOT NULL
    AND ID_STATUSASSOCIATIVO_OLD IS NOT NULL
GROUP BY
    TENANT_CODE,
    ID_STATUSASSOCIATIVO_OLD
HAVING COUNT(*) > 1;

SELECT
    TENANT_CODE,
    ID_CARREIRASERVIDOR_OLD,
    COUNT(*) AS TOTAL
FROM BR_CARREIRA
WHERE TENANT_CODE IS NOT NULL
    AND ID_CARREIRASERVIDOR_OLD IS NOT NULL
GROUP BY
    TENANT_CODE,
    ID_CARREIRASERVIDOR_OLD
HAVING COUNT(*) > 1;