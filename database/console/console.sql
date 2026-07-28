SELECT column_name
FROM user_tab_cols
WHERE table_name = 'MEMBER_APPLICATION'
    AND NVL(identity_column, 'NO') = 'NO'
    AND NVL(virtual_column, 'NO') = 'NO'
    AND NVL(hidden_column, 'NO') = 'NO'
ORDER BY column_id