-- noinspection SqlConstantExpressionForFile

SELECT *
FROM entity
WHERE 1 = 1
--       AND id = 11739
--     AND email = 'asa.convenios@asaclub.org.br'
-- dev anpprev
--     AND id = 10351
ORDER BY id DESC
;

--
SELECT lower(standard_hash('Aviao?!', 'MD5')) FROM dual;

SELECT entity.id, entity.name, entity.md5_password, lower(standard_hash('12345678', 'MD5'))
FROM entity
WHERE 1 = 1
    AND id = 10351
-- and id in (7150, 6860, 7189)
--     AND tenant_code = 'ANPPREV'
--     AND etype_code <> 'associate'
--     AND email = 'dev@inatto.com'
--     AND name LIKE '%TEST%'
--     AND br_cpf_hash = '6ca1074d7315ba2eb49a411701cc2fb479939a38'
ORDER BY id DESC
;


-- popup lov
SELECT '[' || id || '] ' || name || ' (' || br_cpf || ') - ' || email AS info, id
FROM entity
WHERE 1 = 1



SELECT e.br_cpf,
    e.name,
    e.br_mobile,
    e.email,
    e.home_uf,
    to_char(e.birth_date, 'DD/MM/YYYY') AS birth_date,
    e.id_pessoa_old
FROM entity e
WHERE e.id = :P26_MEMBER_ENTITY_ID
