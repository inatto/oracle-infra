CREATE OR REPLACE FUNCTION is_cpf_valid(p_cpf IN VARCHAR2) RETURN BOOLEAN IS
    v_cpf VARCHAR2(11);
    soma1 NUMBER := 0;
    soma2 NUMBER := 0;
    dig1  NUMBER;
    dig2  NUMBER;
BEGIN
    -- remove pontuação
    v_cpf := REGEXP_REPLACE(p_cpf, '[^0-9]', '');

    -- valida tamanho
    IF LENGTH(v_cpf) != 11 THEN
        RETURN FALSE;
    END IF;

    -- elimina CPFs inválidos com dígitos repetidos
    IF v_cpf IN (
                 '00000000000', '11111111111', '22222222222', '33333333333', '44444444444',
                 '55555555555', '66666666666', '77777777777', '88888888888', '99999999999'
        ) THEN
        RETURN FALSE;
    END IF;

    -- calcula 1º dígito verificador
    FOR i IN 1 .. 9 LOOP
        soma1 := soma1 + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (10 - i);
    END LOOP;
    dig1 := 11 - MOD(soma1, 11);
    IF dig1 >= 10 THEN dig1 := 0;
    END IF;

    -- calcula 2º dígito verificador
    FOR i IN 1 .. 9 LOOP
        soma2 := soma2 + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (11 - i);
    END LOOP;
    soma2 := soma2 + dig1 * 2;
    dig2 := 11 - MOD(soma2, 11);
    IF dig2 >= 10 THEN dig2 := 0;
    END IF;

    -- compara com os dígitos do CPF
    RETURN dig1 = TO_NUMBER(SUBSTR(v_cpf, 10, 1)) AND
        dig2 = TO_NUMBER(SUBSTR(v_cpf, 11, 1));
END;
/
