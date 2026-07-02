-- processos por pessoa
SELECT cpf, nome, COUNT(*)
FROM vw_processo_br
GROUP BY cpf, nome
ORDER BY COUNT(*) DESC
/


SELECT *
FROM vw_processo_br
WHERE 1 = 1
    --     AND cpf = '03596923549'
    AND cpf = '08593248187'
/

SELECT DISTINCT nr_processo
FROM vw_processo_br
ORDER BY REGEXP_SUBSTR(nr_processo, '\.[0-9]{4}\.') DESC
/

SELECT DISTINCT nr_cumprimento
FROM vw_processo_br
ORDER BY REGEXP_SUBSTR(nr_cumprimento, '\.[0-9]{4}\.') DESC
/

SELECT DISTINCT nr_embargos
FROM vw_processo_br
ORDER BY REGEXP_SUBSTR(nr_embargos, '\.[0-9]{4}\.') DESC
/

SELECT DISTINCT nr_processo, nr_cumprimento, nr_embargos, nr_precatorio FROM vw_processo_br
/

SELECT nr_processo, nr_cumprimento, nr_embargos, nr_precatorio FROM vw_processo_br
/
