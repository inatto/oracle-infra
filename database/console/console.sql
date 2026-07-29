SELECT
    constraint_name,
    search_condition_vc
FROM user_constraints
WHERE table_name = 'ADDRESS'
    AND constraint_name = 'CK_ADDRESS_TYPE';