-- noinspection SqlConstantExpressionForFile

SELECT *
FROM third_dia_dia
WHERE 1 = 1
;

UPDATE third_dia_dia
SET cpf = LPAD(TRIM(cpf), 11, '0')
WHERE LENGTH(TRIM(cpf)) < 11;
;


SELECT 'WHERE cpf IN (' || CHR(10) || LISTAGG('    ''' || cpf || '''', ',' || CHR(10)) WITHIN GROUP (ORDER BY cpf) || CHR(10) || ');' AS clausula_mariadb
FROM third_dia_dia
;

