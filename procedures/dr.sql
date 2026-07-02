CREATE OR REPLACE PROCEDURE dr (result IN VARCHAR2, raise IN BOOLEAN DEFAULT FALSE) IS
BEGIN

    d(chr(10) || '+----------------------------------------+' || CHR(10) || CHR(10) || result || CHR(10) || CHR(10) || '+----------------------------------------+' || CHR(10), raise);

END;
/