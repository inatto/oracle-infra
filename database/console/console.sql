
DECLARE
    V_MEMBER_ID NUMBER;
    V_TOTAL     NUMBER;
    V_SQL       VARCHAR2(4000);
BEGIN
    SELECT M.ID
    INTO V_MEMBER_ID
    FROM WKSP_SINDICATTO.MEMBER M
    JOIN WKSP_SINDICATTO.ENTITY E
         ON E.ID = M.ENTITY_ID
                 AND LOWER(E.TENANT_CODE) = LOWER(M.TENANT_CODE)
    WHERE LOWER(M.TENANT_CODE) = LOWER('anpprev')
        AND (
        REGEXP_REPLACE(E.BR_CPF, '[^0-9]', '') = '87429047149'
                OR LOWER(E.EMAIL) = LOWER('dev@inatto.com')
        )
        FETCH FIRST 1 ROW ONLY;

    DBMS_OUTPUT.PUT_LINE('MEMBER_ID encontrado: ' || V_MEMBER_ID);
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE(
            RPAD('TABELA', 35) ||
                RPAD('COLUNA', 30) ||
                RPAD('CONSTRAINT', 35) ||
                'REGISTROS'
    );

    FOR R IN (
        SELECT
            C.OWNER,
            C.TABLE_NAME,
            CC.COLUMN_NAME,
            C.CONSTRAINT_NAME
        FROM ALL_CONSTRAINTS C
        JOIN ALL_CONS_COLUMNS CC
             ON CC.OWNER = C.OWNER
                     AND CC.CONSTRAINT_NAME = C.CONSTRAINT_NAME
        JOIN ALL_CONSTRAINTS P
             ON P.OWNER = C.R_OWNER
                     AND P.CONSTRAINT_NAME = C.R_CONSTRAINT_NAME
        JOIN ALL_CONS_COLUMNS PC
             ON PC.OWNER = P.OWNER
                     AND PC.CONSTRAINT_NAME = P.CONSTRAINT_NAME
                     AND PC.POSITION = CC.POSITION
        WHERE C.CONSTRAINT_TYPE = 'R'
            AND P.OWNER = 'WKSP_SINDICATTO'
            AND P.TABLE_NAME = 'MEMBER'
            AND PC.COLUMN_NAME = 'ID'
        ORDER BY C.TABLE_NAME, CC.COLUMN_NAME
        ) LOOP
        V_SQL :=
                'SELECT COUNT(*) FROM "' ||
                    R.OWNER || '"."' ||
                    R.TABLE_NAME || '" WHERE "' ||
                    R.COLUMN_NAME || '" = :1';

        EXECUTE IMMEDIATE V_SQL
            INTO V_TOTAL
            USING V_MEMBER_ID;

        IF V_TOTAL > 0 THEN
            DBMS_OUTPUT.PUT_LINE(
                    RPAD(R.TABLE_NAME, 35) ||
                        RPAD(R.COLUMN_NAME, 30) ||
                        RPAD(R.CONSTRAINT_NAME, 35) ||
                        V_TOTAL
            );
        END IF;
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
                'Membro não encontrado pelo CPF/e-mail informado.'
        );
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE(
                'Mais de um MEMBER foi encontrado para esse CPF/e-mail.'
        );
END;
/