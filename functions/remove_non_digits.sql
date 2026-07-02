CREATE OR REPLACE FUNCTION remove_non_digits(p_text IN VARCHAR2)
RETURN VARCHAR2 IS
    v_result VARCHAR2(4000);
BEGIN
    v_result := REGEXP_REPLACE(p_text, '[^0-9]', '');
    RETURN v_result;
END;
/

