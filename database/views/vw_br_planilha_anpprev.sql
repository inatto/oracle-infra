CREATE OR REPLACE VIEW wksp_sindicatto.vw_br_planilha_anpprev
AS
WITH contacts_ordenados AS
    (SELECT ec.entity_id, ec.contact_type_code, ec.contact_value, ROW_NUMBER() OVER
        (
        PARTITION BY
            ec.entity_id,
            ec.contact_type_code
        ORDER BY
            ec.is_primary DESC,
            ec.id
        ) AS position_number
    FROM wksp_sindicatto.entity_contact ec
    WHERE ec.active = 1)
    , contacts_agrupados AS
    (SELECT c.entity_id, MAX(
            CASE
                WHEN c.contact_type_code = 'email'
                        AND c.position_number = 1
                    THEN c.contact_value
                END
                         ) AS email_1
         , MAX(
                CASE
                    WHEN c.contact_type_code = 'email'
                            AND c.position_number = 2
                        THEN c.contact_value
                    END
           ) AS email_2
         , MAX(
                CASE
                    WHEN c.contact_type_code = 'email'
                            AND c.position_number = 3
                        THEN c.contact_value
                    END
           ) AS email_3
         , MAX(
                CASE
                    WHEN c.contact_type_code = 'phone'
                            AND c.position_number = 1
                        THEN c.contact_value
                    END
           ) AS telefone_1
         , MAX(
                CASE
                    WHEN c.contact_type_code = 'phone'
                            AND c.position_number = 2
                        THEN c.contact_value
                    END
           ) AS telefone_2
         , MAX(
                CASE
                    WHEN c.contact_type_code = 'phone'
                            AND c.position_number = 3
                        THEN c.contact_value
                    END
           ) AS telefone_3

    FROM contacts_ordenados c
    GROUP BY c.entity_id)
    , enderecos_ordenados AS
    (SELECT a.id, a.entity_id, a.address_line, a.address_number, a.complement, a.district, a.br_postal_code, a.city, a.uf, ROW_NUMBER() OVER
        (
        PARTITION BY a.entity_id
        ORDER BY
            a.is_primary DESC,
            CASE
                WHEN a.type = 'home' THEN 0
                ELSE 1
                END,
            a.id
        ) AS position_number

    FROM wksp_sindicatto.address a
    WHERE a.tenant_code = 'anpprev')
    , endereco_principal AS
    (SELECT a.entity_id, a.address_line, a.address_number, a.complement, a.district, a.br_postal_code, a.city, a.uf
    FROM enderecos_ordenados a
    WHERE a.position_number = 1)
    , relacionamentos_ordenados AS
    (SELECT mr.member_id, mr.pension_share_text, mr.related_br_siape, mr.related_name, mr.related_member_id, mr.kinship_type_code, ROW_NUMBER() OVER
        (
        PARTITION BY mr.member_id
        ORDER BY
            CASE
                WHEN mr.end_date IS NULL THEN 0
                ELSE 1
                END,
            mr.id
        ) AS position_number

    FROM wksp_sindicatto.member_relationship mr
    WHERE mr.tenant_code = 'anpprev'
        AND mr.active = 1)
    , relacionamento_principal AS
    (SELECT r.member_id, r.pension_share_text, r.related_br_siape, r.related_name, r.related_member_id, r.kinship_type_code
    FROM relacionamentos_ordenados r
    WHERE r.position_number = 1)
SELECT m.br_siape AS "SIAPE", TRIM(e.name) AS "NOME", e.br_cpf_mask AS "CPF", TO_CHAR(e.birth_date, 'DD/MM/YYYY') AS "DN", sf.name AS "Situação Funcional", CASE e.sex_code
    WHEN 'M' THEN 'Masculino'
    WHEN 'F' THEN 'Feminino'
    END AS "GÊNERO"
    , sa.name AS "SITUAÇÃO ASSOCIATIVA", c.email_1 AS "EMAIL1", c.email_2 AS "EMAIL2", c.email_3 AS "EMAIL3", c.telefone_1 AS "Telefone 1", c.telefone_2 AS "Telefone 2", c.telefone_3 AS "Telefone 3", a.address_line AS "Logradouro", a.address_number AS "Número", a.complement AS "Complemento", a.district AS "Bairro", CASE
    WHEN REGEXP_LIKE(a.br_postal_code, '^[0-9]{8}$')
        THEN SUBSTR(a.br_postal_code, 1, 5)
            || '-'
            || SUBSTR(a.br_postal_code, 6, 3)
    ELSE a.br_postal_code
    END AS "CEP"
    , a.city AS "Cidade", a.uf AS "UF", CASE m.is_retired
    WHEN 1 THEN 'Sim'
    WHEN 0 THEN 'Não'
    END AS "Aposentado"
    , TO_CHAR(
        m.retirement_date,
        'DD/MM/YYYY'
      ) AS "Data Aposentadoria"
    , CASE m.is_pension_institutor
    WHEN 1 THEN 'Sim'
    WHEN 0 THEN 'Não'
    END AS "Instituidor de Pensão"
    , TO_CHAR(
        m.pension_date,
        'DD/MM/YYYY'
      ) AS "Data Pensão"
    , CASE
    WHEN o.code IS NOT NULL
        THEN o.code || ' | ' || o.name
    END AS "Órgão"
    , CASE
    WHEN u.id IS NOT NULL
        THEN
        u.code
                || ' | '
                || u.name
                || CASE
            WHEN u.short_name IS NOT NULL
                THEN ' | ' || u.short_name
            END
                || CASE
            WHEN u.uf_code IS NOT NULL
                THEN ' | ' || u.uf_code
            END
    END AS "UPAG"
    , CASE
    WHEN ca.code IS NOT NULL
        THEN ca.code || ' | ' || ca.name
    END AS "Carreira"
    , TO_CHAR(
        m.public_service_entry_date,
        'DD/MM/YYYY'
      ) AS "Data Ingresso Serviço Público"
    , r.pension_share_text AS "Cota", CASE
    WHEN r.related_member_id IS NOT NULL
        THEN
        TRIM(
                rm.br_siape
                        || CASE
                    WHEN rm.br_siape IS NOT NULL
                            AND re.name IS NOT NULL
                        THEN ' | '
                    END
                        || re.name
        )

    WHEN r.related_br_siape IS NOT NULL
            OR r.related_name IS NOT NULL
        THEN
        TRIM(
                r.related_br_siape
                        || CASE
                    WHEN r.related_br_siape IS NOT NULL
                            AND r.related_name IS NOT NULL
                        THEN ' | '
                    END
                        || r.related_name
        )
    END AS "Instituidor / Pensionista"
    , kt.name AS "Parentesco", CASE
    WHEN e.birth_date IS NOT NULL
        THEN TRUNC(
            MONTHS_BETWEEN(
                    TRUNC(SYSDATE),
                    e.birth_date
            ) / 12
             )
    END AS "Idade"
    , TO_CHAR(
        m.affiliation_date,
        'DD/MM/YYYY'
      ) AS "Filiação"
    , TO_CHAR(
        m.br_sinproprev_affiliation_date,
        'DD/MM/YYYY'
      ) AS "Filiação SINPROPREV",

    m.import_file_name

FROM wksp_sindicatto.member m

JOIN wksp_sindicatto.entity e
     ON e.id = m.entity_id
             AND e.tenant_code = m.tenant_code

LEFT JOIN contacts_agrupados c
          ON c.entity_id = e.id

LEFT JOIN endereco_principal a
          ON a.entity_id = e.id

LEFT JOIN wksp_sindicatto.br_situacao_funcional sf
          ON sf.code = m.br_situacao_funcional_code

LEFT JOIN wksp_sindicatto.br_situacao_associativa sa
          ON sa.code = m.br_situacao_associativa_code

LEFT JOIN wksp_sindicatto.br_orgao o
          ON o.code = m.br_orgao_code

LEFT JOIN wksp_sindicatto.br_upag u
          ON u.id = m.br_upag_id

LEFT JOIN wksp_sindicatto.br_carreira ca
          ON ca.code = m.br_carreira_code

LEFT JOIN relacionamento_principal r
          ON r.member_id = m.id

LEFT JOIN wksp_sindicatto.member rm
          ON rm.id = r.related_member_id

LEFT JOIN wksp_sindicatto.entity re
          ON re.id = rm.entity_id

LEFT JOIN wksp_sindicatto.kinship_type kt
          ON kt.code = r.kinship_type_code

WHERE m.tenant_code = 'anpprev'
    AND m.etype_code = 'associate';

SELECT * FROM vw_br_planilha_anpprev
where import_file_name = '20260721_Relação de associados_atualizada.xlsx'
;