SELECT
    b.confirmed_at,
    m.id AS member_id,
    e.name,
    e.br_cpf,
    m.br_siape,
    m.br_situacao_funcional_code,
    sf.name AS situacao_funcional
FROM voting_ballot b
JOIN voting v
     ON v.id = b.voting_id
JOIN member m
     ON m.id = b.member_id
JOIN entity e
     ON e.id = m.entity_id
LEFT JOIN br_situacao_funcional sf
          ON sf.code = m.br_situacao_funcional_code
WHERE b.voting_id = :VOTING_ID
    AND b.voting_mode = 'REAL'
    AND b.status = 'CONFIRMED'
    AND m.br_situacao_funcional_code IN (
                                         'servidor',
                                         'pensionista'
    )
ORDER BY
    sf.name,
    e.name;

SELECT
    code,
    name,
    active
FROM br_situacao_funcional
ORDER BY name;


SELECT
    e.br_cpf,
    COUNT(DISTINCT m.id) AS total_members,
    LISTAGG(
            m.id || ' - ' || NVL(sf.name, m.br_situacao_funcional_code),
            ' | '
    ) WITHIN GROUP (ORDER BY m.id) AS cadastros
FROM voting_ballot b
JOIN member m
     ON m.id = b.member_id
JOIN entity e
     ON e.id = m.entity_id
LEFT JOIN br_situacao_funcional sf
          ON sf.code = m.br_situacao_funcional_code
WHERE b.voting_id = :VOTING_ID
    AND b.voting_mode = 'REAL'
    AND b.status = 'CONFIRMED'
GROUP BY e.br_cpf
HAVING COUNT(DISTINCT m.id) > 1;