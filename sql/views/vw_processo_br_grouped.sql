-- noinspection SqlShadowingAliasForFile
-- noinspection SqlSignatureForFile
-- noinspection SqlShouldBeInGroupByForFile

CREATE OR REPLACE VIEW vw_processo_br_grouped AS
SELECT DISTINCT 1 dummy
    , p.id
    , t.name tenant_name
    , t.code tenant_code
    , nr_processo
    , COUNT(DISTINCT cpf) AS partes_cpf
    , LISTAGG(DISTINCT autor_acao, ', ') WITHIN GROUP (ORDER BY autor_acao) AS autor_acao
    , LISTAGG(DISTINCT objeto_acao, ', ') WITHIN GROUP (ORDER BY objeto_acao) AS objeto_acao
    , LISTAGG(DISTINCT escritorio_responsavel, ', ') WITHIN GROUP (ORDER BY escritorio_responsavel) AS escritorio_responsavel
    , LISTAGG(DISTINCT parte_contraria, ', ') WITHIN GROUP (ORDER BY parte_contraria) AS parte_contraria
    , LISTAGG(DISTINCT vara_processo, ', ') WITHIN GROUP (ORDER BY vara_processo) AS vara_processo
    , LISTAGG(DISTINCT vara_cumprimento, ', ') WITHIN GROUP (ORDER BY vara_cumprimento) AS vara_cumprimento

-- N     , LISTAGG(DISTINCT nr_cumprimento, ', ') WITHIN GROUP (ORDER BY nr_cumprimento) AS nr_cumprimento
-- N    , LISTAGG(DISTINCT nr_embargos, ', ') WITHIN GROUP (ORDER BY nr_embargos) AS nr_embargos
-- N     , LISTAGG(DISTINCT valor_executado, ', ') WITHIN GROUP (ORDER BY valor_executado) AS valor_executado
-- N     , LISTAGG(DISTINCT valor_acao, ', ') WITHIN GROUP (ORDER BY valor_acao) AS valor_acao
-- N     , LISTAGG(DISTINCT valor_acordo_agu, ', ') WITHIN GROUP (ORDER BY valor_acordo_agu) AS valor_acordo_agu
-- N     , listagg(distinct nr_precatorio, ', ') WITHIN GROUP (ORDER BY nr_precatorio) AS nr_precatorio
-- N     , listagg(distinct valor_precatorio, ', ') WITHIN GROUP (ORDER BY valor_precatorio) AS valor_precatorio
-- N     , listagg(distinct data_expedicao_precatorio_mask, ', ') WITHIN GROUP (ORDER BY data_expedicao_precatorio_mask) AS data_expedicao_precatorio_mask
-- N     , listagg(distinct nr_suplementar, ', ') WITHIN GROUP (ORDER BY nr_suplementar) AS nr_suplementar
-- N     , listagg(distinct valor_suplementar, ', ') WITHIN GROUP (ORDER BY valor_suplementar) AS valor_suplementar
-- N     , listagg(distinct data_expedicao_suplementar_mask, ', ') WITHIN GROUP (ORDER BY data_expedicao_suplementar_mask) AS data_expedicao_suplementar_mask
-- N     , listagg(distinct valor_devolvido, ', ') WITHIN GROUP (ORDER BY valor_devolvido) AS valor_devolvido
-- N     , listagg(distinct data_devolucao_mask, ', ') WITHIN GROUP (ORDER BY data_devolucao_mask) AS data_devolucao_mask

FROM vw_processo_br p
LEFT JOIN tenant t ON p.tenant_code = t.code
WHERE 1 = 1
GROUP BY p.id, t.name, t.code, nr_processo
ORDER BY nr_processo
;

SELECT * FROM vw_processo_br_grouped
;

