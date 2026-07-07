DECLARE
    v_voting_id          number;
    v_voting_question_id number;
BEGIN
    INSERT INTO voting (
        tenant_code,
        title,
        description,
        starts_at,
        ends_at,
        is_active
    )
    VALUES (
        'anpprev',
        'Deliberação AGE ANPPREV',
        'ORDEM DO DIA — DELIBERAÇÃO AGE ANPPREV',
        systimestamp,
        NULL,
        1
    )
    RETURNING id INTO v_voting_id;

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        1,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a defender que os associados substituídos que exercem cargos comissionados não sejam impedidos de receber os respectivos valores em razão da incidência do abate-teto?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        2,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a assegurar a revisão de aposentadorias e pensões, para que parcelas remuneratórias decorrentes de ações judiciais ou medidas supervenientes à concessão do benefício incidam no respectivo cálculo, com os reflexos financeiros cabíveis?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        3,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a fazer repercutir, no cálculo da média para apuração do Benefício Especial, vantagens financeiras decorrentes de parcelas remuneratórias reconhecidas judicial ou administrativamente?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        4,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a assegurar o direito à paridade aos pensionistas substituídos, cujos instituidores da pensão se enquadravam nos requisitos do art. 3º da Emenda Constitucional nº 47/2005, bem como requerer a revisão do fundamento da aposentadoria dos instituidores que preenchiam os requisitos das regras de transição da referida Emenda?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        5,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a discutir a forma de cálculo da contribuição social para o RPPS incidente sobre pensões, especialmente nos casos em que há mais de um pensionista?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        6,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a evitar que empréstimos consignados contratados por Procuradores Federais, Procuradores do Banco Central do Brasil e Advogados da União já falecidos repercutam sobre as respectivas pensões por morte?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        7,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a defender que os honorários advocatícios sejam enquadrados no conceito de proventos para fins da isenção do Imposto de Renda prevista no art. 6º, inciso XIV, da Lei nº 7.713/1988?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        8,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a buscar a implementação da cota segura nos honorários advocatícios, com definição do valor cheio e pagamento de parcela suficiente para atingir o teto constitucional de forma individual, com posterior retenção do excedente pelo CCHA?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    INSERT INTO voting_question (
        voting_id,
        question_order,
        question_text,
        is_active
    )
    VALUES (
        v_voting_id,
        9,
        'Você aprova a propositura, pela ANPPREV, de ação judicial destinada a buscar o pagamento do Adicional por Tempo de Serviço — ATS, correspondente aos períodos aquisitivos já formados antes da extinção do benefício?',
        1
    )
    RETURNING id INTO v_voting_question_id;

    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 1, 'Aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 2, 'Não aprovo', 1);
    INSERT INTO voting_option (voting_question_id, option_order, option_text, is_active) VALUES (v_voting_question_id, 3, 'Em branco', 1);

    COMMIT;
END;
/