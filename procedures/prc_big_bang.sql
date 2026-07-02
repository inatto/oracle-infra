CREATE OR REPLACE PROCEDURE prc_big_bang IS

BEGIN

    apex_util.set_session_time_zone('America/Sao_Paulo');
--     ALTER SESSION set TIME_ZONE = 'America/Sao_Paulo';

END;
/

BEGIN

    prc_big_bang;

END;

SELECT SESSIONTIMEZONE, DBTIMEZONE, CURRENT_DATE, CURRENT_TIMESTAMP, LOCALTIMESTAMP
FROM dual;