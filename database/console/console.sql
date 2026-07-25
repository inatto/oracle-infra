BEGIN
    DBMS_STATS.GATHER_SCHEMA_STATS(
            ownname => USER,
            cascade => TRUE
    );
END;
/