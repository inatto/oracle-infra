-- CONTINUACAO/CORRECAO DA CONVERSAO PARA ORACLE DATE
-- Feito para rodar depois do erro ORA-01463 em voting.starts_at.
-- Pode ser executado novamente: as conversoes de tipo verificam o tipo atual.

--------------------------------------------------------------------------------
-- 1. Remover constraints que bloqueiam a alteracao dos tipos
--------------------------------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE voting DROP CONSTRAINT ck_voting_period';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -2443 THEN RAISE; END IF; -- constraint inexistente
END;
/

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE voting DROP CONSTRAINT ck_voting_results_at';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -2443 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE voting_ballot DROP CONSTRAINT ck_voting_ballot_confirmation';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -2443 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE voting_ballot DROP CONSTRAINT ck_voting_ballot_confirmed_at';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -2443 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE voting_ballot DROP CONSTRAINT ck_voting_ballot_updated_at';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -2443 THEN RAISE; END IF;
END;
/

--------------------------------------------------------------------------------
-- 2. Converter todas as colunas TIMESTAMP restantes para DATE
--------------------------------------------------------------------------------

DECLARE
    PROCEDURE modify_to_date(p_table VARCHAR2, p_column VARCHAR2) IS
        l_type USER_TAB_COLUMNS.DATA_TYPE%TYPE;
    BEGIN
        SELECT data_type
        INTO l_type
        FROM user_tab_columns
        WHERE table_name = UPPER(p_table)
            AND column_name = UPPER(p_column);

        IF l_type LIKE 'TIMESTAMP%' THEN
            EXECUTE IMMEDIATE
                'ALTER TABLE "' || UPPER(p_table) ||
                '" MODIFY ("' || UPPER(p_column) || '" DATE)';

            DBMS_OUTPUT.PUT_LINE('CONVERTIDO: ' || p_table || '.' || p_column);
        ELSE
            DBMS_OUTPUT.PUT_LINE('JA ERA DATE: ' || p_table || '.' || p_column);
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('NAO ENCONTRADO: ' || p_table || '.' || p_column);
    END;
BEGIN
    modify_to_date('VOTING', 'STARTS_AT');
    modify_to_date('VOTING', 'ENDS_AT');
    modify_to_date('VOTING', 'RESULTS_AT');

    modify_to_date('VOTING_QUESTION', 'CREATED_AT');
    modify_to_date('VOTING_QUESTION', 'UPDATED_AT');

    modify_to_date('VOTING_OPTION', 'CREATED_AT');
    modify_to_date('VOTING_OPTION', 'UPDATED_AT');

    modify_to_date('CONTENT_ATTACHMENT', 'CREATED_AT');
    modify_to_date('CONTENT_ATTACHMENT', 'UPDATED_AT');

    modify_to_date('VOTING_DETAIL', 'CREATED_AT');
    modify_to_date('VOTING_DETAIL', 'UPDATED_AT');

    modify_to_date('VOTING_BALLOT', 'STARTED_AT');
    modify_to_date('VOTING_BALLOT', 'UPDATED_AT');
    modify_to_date('VOTING_BALLOT', 'CONFIRMED_AT');

    modify_to_date('VOTING_ANSWER', 'ANSWERED_AT');
END;
/

--------------------------------------------------------------------------------
-- 3. Defaults coerentes com DATE
--------------------------------------------------------------------------------

ALTER TABLE voting_question
    MODIFY (created_at DEFAULT SYSDATE);

ALTER TABLE voting_option
    MODIFY (created_at DEFAULT SYSDATE);

ALTER TABLE content_attachment
    MODIFY (
        created_at DEFAULT SYSDATE,
        updated_at DEFAULT SYSDATE
        );

ALTER TABLE voting_detail
    MODIFY (created_at DEFAULT SYSDATE);

ALTER TABLE voting_ballot
    MODIFY (
        started_at DEFAULT SYSDATE,
        updated_at DEFAULT SYSDATE
        );

ALTER TABLE voting_answer
    MODIFY (answered_at DEFAULT SYSDATE);

--------------------------------------------------------------------------------
-- 4. Recriar constraints removidas
--------------------------------------------------------------------------------

ALTER TABLE voting ADD CONSTRAINT ck_voting_period
    CHECK (starts_at < ends_at);

ALTER TABLE voting ADD CONSTRAINT ck_voting_results_at
    CHECK (results_at IS NULL OR results_at >= ends_at);

ALTER TABLE voting_ballot ADD CONSTRAINT ck_voting_ballot_confirmation
    CHECK (
        (status = 'DRAFT' AND confirmed_at IS NULL)
            OR
        (status = 'CONFIRMED' AND confirmed_at IS NOT NULL)
        );

ALTER TABLE voting_ballot ADD CONSTRAINT ck_voting_ballot_confirmed_at
    CHECK (confirmed_at IS NULL OR confirmed_at >= started_at);

ALTER TABLE voting_ballot ADD CONSTRAINT ck_voting_ballot_updated_at
    CHECK (updated_at >= started_at);

--------------------------------------------------------------------------------
-- 5. Recriar indice da votacao sem SYS_EXTRACT_UTC
--------------------------------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX ix_voting_tenant_period';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE <> -1418 THEN RAISE; END IF; -- indice inexistente
END;
/

CREATE INDEX ix_voting_tenant_period
    ON voting (tenant_code, is_active, starts_at, ends_at);

--------------------------------------------------------------------------------
-- 6. Ajustar triggers: DATE deve usar SYSDATE
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER tg_voting_ballot_biu
    BEFORE INSERT OR UPDATE
    ON voting_ballot
    FOR EACH ROW
DECLARE
    l_member_tenant_code member.tenant_code%TYPE;
    l_member_active      member.active%TYPE;
    l_voting_tenant_code voting.tenant_code%TYPE;
    l_voting_active      voting.is_active%TYPE;
    l_allow_test         voting.allow_test%TYPE;
    l_starts_at          voting.starts_at%TYPE;
    l_ends_at            voting.ends_at%TYPE;
BEGIN
    SELECT m.tenant_code,
        m.active
    INTO l_member_tenant_code,
        l_member_active
    FROM member m
    WHERE m.id = :new.member_id;

    SELECT v.tenant_code,
        v.is_active,
        v.allow_test,
        v.starts_at,
        v.ends_at
    INTO l_voting_tenant_code,
        l_voting_active,
        l_allow_test,
        l_starts_at,
        l_ends_at
    FROM voting v
    WHERE v.id = :new.voting_id;

    IF l_member_active <> 1 THEN
        RAISE_APPLICATION_ERROR(-20001, 'O membro está inativo.');
    END IF;

    IF l_voting_active <> 1 THEN
        RAISE_APPLICATION_ERROR(-20002, 'A votação está inativa.');
    END IF;

    IF l_member_tenant_code <> l_voting_tenant_code THEN
        RAISE_APPLICATION_ERROR(-20003, 'O membro não pertence ao tenant da votação.');
    END IF;

    IF :new.voting_mode = 'TEST' AND l_allow_test <> 1 THEN
        RAISE_APPLICATION_ERROR(-20004, 'A votação não permite modo de teste.');
    END IF;

    IF :new.voting_mode = 'REAL'
        AND (SYSDATE < l_starts_at OR SYSDATE > l_ends_at) THEN
        RAISE_APPLICATION_ERROR(-20005, 'A votação está fora do período permitido.');
    END IF;

    IF INSERTING THEN
        :new.started_at := COALESCE(:new.started_at, SYSDATE);
        :new.updated_at := SYSDATE;
    END IF;

    IF UPDATING THEN
        IF :old.status = 'CONFIRMED' THEN
            RAISE_APPLICATION_ERROR(-20006, 'Uma votação confirmada não pode ser alterada.');
        END IF;

        IF :new.voting_id <> :old.voting_id
            OR :new.member_id <> :old.member_id
            OR :new.voting_mode <> :old.voting_mode THEN
            RAISE_APPLICATION_ERROR(
                    -20007,
                    'Votação, membro e modo não podem ser alterados.'
            );
        END IF;

        IF :old.status = 'DRAFT' AND :new.status = 'CONFIRMED' THEN
            :new.confirmed_at := COALESCE(:new.confirmed_at, SYSDATE);
        END IF;

        :new.updated_at := SYSDATE;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER tg_voting_answer_biu
    BEFORE INSERT OR UPDATE
    ON voting_answer
    FOR EACH ROW
DECLARE
    l_ballot_voting_id   voting_ballot.voting_id%TYPE;
    l_ballot_status      voting_ballot.status%TYPE;
    l_question_voting_id voting_question.voting_id%TYPE;
BEGIN
    SELECT b.voting_id,
        b.status
    INTO l_ballot_voting_id,
        l_ballot_status
    FROM voting_ballot b
    WHERE b.id = :new.ballot_id;

    SELECT q.voting_id
    INTO l_question_voting_id
    FROM voting_question q
    WHERE q.id = :new.voting_question_id;

    IF l_ballot_status = 'CONFIRMED' THEN
        RAISE_APPLICATION_ERROR(
                -20008,
                'As respostas de uma votação confirmada não podem ser alteradas.'
        );
    END IF;

    IF l_ballot_voting_id <> l_question_voting_id THEN
        RAISE_APPLICATION_ERROR(
                -20009,
                'A pergunta não pertence à votação do ballot.'
        );
    END IF;

    :new.answered_at := SYSDATE;
END;
/

--------------------------------------------------------------------------------
-- 7. Recompilar objetos invalidos
--------------------------------------------------------------------------------

BEGIN
    FOR r IN (
        SELECT object_name, object_type
        FROM user_objects
        WHERE status = 'INVALID'
            AND object_type IN ('TRIGGER', 'VIEW', 'PROCEDURE', 'FUNCTION', 'PACKAGE')
        ) LOOP
        BEGIN
            EXECUTE IMMEDIATE
                'ALTER ' || r.object_type || ' "' || r.object_name || '" COMPILE';
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(
                        'NAO RECOMPILADO: ' || r.object_type || ' ' ||
                        r.object_name || ' - ' || SQLERRM
                );
        END;
    END LOOP;
END;
/

--------------------------------------------------------------------------------
-- 8. Conferencias finais
--------------------------------------------------------------------------------

PROMPT === COLUNAS TIMESTAMP RESTANTES: DEVE RETORNAR ZERO ===

SELECT table_name,
    column_name,
    data_type
FROM user_tab_columns
WHERE data_type LIKE 'TIMESTAMP%'
ORDER BY table_name, column_id;

PROMPT === OBJETOS INVALIDOS: DEVE RETORNAR ZERO ===

SELECT object_type,
    object_name,
    status
FROM user_objects
WHERE status = 'INVALID'
ORDER BY object_type, object_name;

PROMPT === CONSTRAINTS DA VOTACAO ===

SELECT table_name,
    constraint_name,
    status,
    validated
FROM user_constraints
WHERE constraint_name IN (
                          'CK_VOTING_PERIOD',
                          'CK_VOTING_RESULTS_AT',
                          'CK_VOTING_BALLOT_CONFIRMATION',
                          'CK_VOTING_BALLOT_CONFIRMED_AT',
                          'CK_VOTING_BALLOT_UPDATED_AT'
    )
ORDER BY table_name, constraint_name;

COMMIT;