CREATE OR REPLACE FUNCTION mask_br_cnpj(p_cnpj VARCHAR2)
    RETURN VARCHAR2
    DETERMINISTIC IS
BEGIN
    RETURN REGEXP_REPLACE(p_cnpj, '(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})', '\1.\2.\3/\4-\5');
END;
/
