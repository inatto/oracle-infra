CREATE OR REPLACE PROCEDURE dd (result IN VARCHAR2) IS
BEGIN

    --
    prc_debug(result, false);

    -- forca exit
    RAISE_APPLICATION_ERROR(-20000, '[dd EXIT] ' || result);

END;
/