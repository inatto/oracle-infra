CREATE OR REPLACE PROCEDURE d (result IN VARCHAR2, raise IN BOOLEAN DEFAULT false) IS
BEGIN

    --
    prc_debug(result, raise);

END;
/