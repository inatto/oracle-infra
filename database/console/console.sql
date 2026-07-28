MERGE INTO etype dst
USING (
    SELECT
        'sinproprev' AS tenant_code
        , 'associate' AS code
        , 'Associado' AS name
        , 'Associados' AS plural_name
        , 1 AS active
    FROM dual
) src
ON (
    dst.tenant_code = src.tenant_code
        AND dst.code = src.code
    )
WHEN MATCHED THEN
    UPDATE SET
        dst.name = src.name
               , dst.plural_name = src.plural_name
               , dst.active = src.active
WHEN NOT MATCHED THEN
    INSERT (
        tenant_code
    , code
    , name
    , plural_name
    , active
    )
    VALUES (
        src.tenant_code
    , src.code
    , src.name
    , src.plural_name
    , src.active
    );

COMMIT;