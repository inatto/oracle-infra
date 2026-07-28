WITH duplicados AS (
    SELECT
        id_pessoa,
        nome,
        cpf,
        cnpj,
        insertDate,
        updateDate,
        COALESCE(updateDate, insertDate) AS data_referencia,
        CASE
            WHEN NULLIF(TRIM(cpf), '') IS NOT NULL
                THEN CONCAT('CPF:', TRIM(cpf))
            WHEN NULLIF(TRIM(cnpj), '') IS NOT NULL
                THEN CONCAT('CNPJ:', TRIM(cnpj))
            END AS documento
    FROM pessoa
    WHERE NULLIF(TRIM(cpf), '') IS NOT NULL
        OR NULLIF(TRIM(cnpj), '') IS NOT NULL
),
    classificados AS (
        SELECT
            d.*,
            COUNT(*) OVER (
                PARTITION BY documento
                ) AS total_documento,
            ROW_NUMBER() OVER (
                PARTITION BY documento
                ORDER BY
                    data_referencia DESC,
                    id_pessoa DESC
                ) AS ordem
        FROM duplicados d
    )
SELECT
    documento,
    id_pessoa,
    nome,
    insertDate,
    updateDate,
    data_referencia,
    CASE
        WHEN ordem = 1 THEN 'PRINCIPAL'
        ELSE 'DUPLICADO'
        END AS papel
FROM classificados
WHERE total_documento > 1
ORDER BY
    documento,
    ordem;