SELECT
    constraint_name,
    search_condition_vc
FROM user_constraints
WHERE table_name = 'ENTITY'
    AND constraint_name = 'CK_ENTITY_HOME_UF';