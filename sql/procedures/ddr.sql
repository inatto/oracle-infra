CREATE OR REPLACE PROCEDURE ddr (result IN VARCHAR2, raise IN BOOLEAN DEFAULT FALSE) IS
BEGIN

    --
    dr(result, raise);

    -- forca exit
    RAISE_APPLICATION_ERROR(-20000, '[dd EXIT]');

END;
/