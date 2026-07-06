CREATE OR REPLACE PROCEDURE prc_debug (result IN VARCHAR2, raise IN BOOLEAN DEFAULT false) IS
BEGIN

    --
    dbms_output.put_line(result);

    --
    IF raise THEN
        RAISE_APPLICATION_ERROR(-20001, CHR(10) ||
            '*** prc_raiser *** ' || CHR(10) ||
            '*** sqlerrm *** ' || SQLERRM || CHR(10) ||
            '*** result *** ' || result);
    END IF;

END;
/