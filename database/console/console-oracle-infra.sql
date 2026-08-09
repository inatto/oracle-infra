UPDATE entity
SET md5_password = 'a31c3bb7fbe0d25ee3d36796b4dd23fd'
WHERE id = 10351
    AND LOWER(TRIM(email)) = 'dev@inatto.com';

COMMIT;