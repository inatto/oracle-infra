CREATE OR REPLACE FUNCTION mask_br_cpf(p_cpf VARCHAR2)
    RETURN VARCHAR2 DETERMINISTIC IS
BEGIN
    IF p_cpf IS NULL OR NOT REGEXP_LIKE(p_cpf, '^[0-9]{11}$') THEN
        RETURN '';
    END IF;
    RETURN SUBSTR(REGEXP_REPLACE(p_cpf, '(\d{3})(\d{3})(\d{3})(\d{2})', '\1.\2.\3-\4'), 1, 20);
END;
/