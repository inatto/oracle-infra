-- noinspection SqlConstantExpressionForFile

-- truncate table processo_br;

SELECT *
FROM processo_br
WHERE 1 = 1
;




SELECT cpf, count(*)
FROM processo_br
WHERE 1 = 1
GROUP BY cpf
;



alter table PROCESSO_BR
    add situacao_cumprimento_sentenca VARCHAR2(200)
/


alter table PROCESSO_BR
    add situacao_embargos_execucao VARCHAR2(200)
/