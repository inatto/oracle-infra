-- definiu membros com email dev@inatto.com como dev
UPDATE member
SET is_dev = 1
WHERE id IN (SELECT id FROM vw_raw_member WHERE email = 'dev@inatto.com');

SELECT * FROM member WHERE is_dev = 1;
