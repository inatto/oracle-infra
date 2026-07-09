-- Notas institucionais ANPPREV
-- Regra: Notas usam CONTENT.CTYPE_CODE = 'note' e SUBTYPE nulo.
-- Arquivos/anexos locais de notas, quando existirem, devem usar:
-- /tenants/anpprev/files/notes/<arquivo>


INSERT INTO content (
    tenant_code,
    ctype_code,
    subtype,
    title,
    slug,
    contents,
    content_format,
    status,
    author_name,
    source_name,
    source_url,
    image_url,
    image_alt,
    sort_order,
    created_at,
    updated_at,
    published_at
) VALUES (
    'anpprev',
    'note',
    NULL,
    q'[27 ANOS DE ANPPREV (Vera Sarmet)]',
    q'[27-anos-de-anpprev-vera-sarmet]',
    q'[<p>27 anos! Mais de um quarto de século! Lembro-me bem de uma cena: estávamos com o jornal Correio Braziliense nas mãos quando o Procurador-Geral à época, Dr. Francisco Adalberto da Nóbrega, perguntou porque estávamos tão aborrecidos. Dissemos: “Olha esta notícia. Estamos próximos à isenção na tabela do imposto de renda”. Depois de sermos por anos os “Príncipes da República”, vimos nosso salário ser achatado vergonhosamente. Chamou-nos ele às falas: por que vocês não se unem? Não adianta vozes soltas reclamando, vocês precisam de uma associação, forte, para defender suas bandeiras.</p>
<p>E foi assim, com o auxílio desse ilustre anppreviano honorário, que nossa colega Meire Monteiro ousou criar a Anpprev. Concretizada, logo arregimentou a categoria em torno dos ideais que desde então nortearam a Associação. E conseguimos respeito e novamente termos salários compatíveis com a importância do trabalho que desenvolvemos.</p>
<p>Logo fizemos o primeiro congresso, em Caldas Novas, Goiás. Em 15 dias organizamos o evento, com presença expressiva dos associados de todo Brasil. E, no meio das palestras, o imprevisto aconteceu: acabou a energia elétrica no resort. O calor comum à região era intenso. O ar condicionado, claro, inoperante. E ninguém saiu do auditório. Queríamos ouvir e sermos ouvidos. O então presidente do INSS, Cesar Gasparin, presidente da Anfip, disse ao microfone que nunca tinha presenciado um tal interesse de uma categoria nos destinos do órgão e da carreira. Foi, realmente, impressionante.</p>
<p>Então, colegas, se estamos hoje, como os demais servidores públicos, vendo nossas prerrogativas e conquistas ameaçadas, vamos à luta! Somos importantes para o Estado. E nós, os aposentados, sabemos quanto suor foi preciso para vermos implantadas a AGU, a PGF, a modernização das procuradorias. Ainda há vida depois da aposentadoria: não vamos ficar inertes, descansando sobre os louros.</p>
<p>Nesses 27 anos contamos, sempre, com o apoio da Anpprev, que ao longo dos quais se fez respeitada, abrindo portas dos gabinetes institucionais, levando nossos pleitos às autoridades. Vamos dar a contrapartida: nos engajarmos nas campanhas (como agora, contra a Reforma da Previdência, no que ela tem de perniciosa), sempre que para isto convocados.</p>
<p>Mas, como já dito, ninguém entra em um mesmo rio uma segunda vez, pois quando isso acontece já não se é o mesmo, assim como as águas já serão outras. Tudo mudou ao longo desses anos. Nós, a administração pública, a Anpprev. Nada é permanente, exceto a mudança.</p>
<p>E o jornal já distribuído pela atual diretoria mostrou as conquistas feitas, no campo das parcerias institucionais, na representação da categoria, nos convênios firmados. Temos procurado ficar à altura das gestões anteriores, nos que elas tiveram de melhor, mas trazendo nosso jeito de ser diferente, cumprindo as promessas de campanha.</p>
<p>Esta gestão, onde alguns componentes são anpprevianos de primeira hora, vem demonstrando domínio e conhecimento dos problemas que atingem os associados. O caminho buscado do equilíbrio e da satisfação coletiva está sendo traçado com idealismo e mentes sintonizadas.</p>
<p>Sempre haverá aqueles descontentes. Há apenas uma forma de evitar críticas: não fazer nada, não dizer nada, não ser nada. E a omissão não é uma característica desta gestão. Confiamos em que, juntos com os associados, poderemos alcançar ainda muitas vitórias.</p>
<p>Parabéns à Anpprev e todos os Anpprevianos! Vida longa à Anpprev!</p>]',
    'html',
    'published',
    q'[Vera Sarmet]',
    q'[Editorial]',
    q'[https://anpprev.org.br/conteudo/5080/27-anos-de-anpprev-vera-sarmet]',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    10,
    TO_DATE('2020-01-22', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2020-01-22', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code,
    ctype_code,
    subtype,
    title,
    slug,
    contents,
    content_format,
    status,
    author_name,
    source_name,
    source_url,
    image_url,
    image_alt,
    sort_order,
    created_at,
    updated_at,
    published_at
) VALUES (
    'anpprev',
    'note',
    NULL,
    q'[REFORMA DA PREVIDÊNCIA. CONTRIBUIÇÃO DE APOSENTADOS E PENSIONISTAS COM DOENÇA INCAPACITANTE.]',
    q'[reforma-da-previdencia-contribuicao-de-aposentados-e-pensionistas-com-doenca-incapacitante]',
    q'[<p>Até a promulgação da reforma da previdência (EC 103/19), ocorrida em 11/11/19, servidores públicos aposentados e pensionistas portadores de doença incapacitante tinham direito à isenção parcial da sua contribuição previdenciária até o limite de duas vezes o valor do maior benefício pago pelo Regime Geral da Previdência (RGPS). O direito, introduzido em 2005 pela EC 47/05, estava consagrado no parágrafo 21 do art. 40 da CF/88 e tinha por fundamento a necessidade de tornar mais digna a vida de aposentados e pensionistas doentes e sua necessidade maior de recursos para tratamentos de saúde.</p>
<p>Com a reforma, a isenção foi extinta e aposentados e pensionistas acometidos de doença incapacitante passaram a contribuir sobre a totalidade dos seus rendimentos.</p>
<p>Para aposentadorias e pensões federais a nova contribuição passou a vigorar a partir de 11/19, data da promulgação da reforma, e para estaduais e municipais a partir da data de publicação de lei de iniciativa privativa do respectivo Poder Executivo.</p>
<p>O retrocesso social é evidente. A violação a direitos e garantias fundamentais também. Retirar de aposentados e pensionistas com saúde frágil um direito que proteje a vida e que existia há mais de dez anos configura redução de vencimentos, ofensa à dignidade da pessoa humana, violação à segurança jurídica, retrocesso social e desrespeito à confiança.</p>
<p>Tudo isso é passível de questionamento judicial, ainda mais porque, mesmo que não exista direito adquirido a regime jurídico, já está consagrado pelo Poder Judiciário a proibição ao risco social e a violação a direitos que já ingressaram na esfera patrimonial do indivíduo.</p>
<p>Destarte, em face dos evidentes prejuízos que a referida alteração promovida pela EC 103/2019 acarreta aos associados, informamos que a anpprev já está preparando mais essa ação, dentre outras, contra a reforma. Não mediremos esforços para buscar, na via judicial, o reconhecimento da inconstitucionalidade de mais esse ponto.</p>]',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'[https://anpprev.org.br/conteudo/5082/reforma-da-previdencia-contribuicao-de-aposentados-e-pensionistas-com-doenca-incapacitante]',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    20,
    TO_DATE('2020-01-20', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2020-01-20', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code,
    ctype_code,
    subtype,
    title,
    slug,
    contents,
    content_format,
    status,
    author_name,
    source_name,
    source_url,
    image_url,
    image_alt,
    sort_order,
    created_at,
    updated_at,
    published_at
) VALUES (
    'anpprev',
    'note',
    NULL,
    q'[REFORMA DA PREVIDÊNCIA. MAJORAÇÃO DAS ALÍQUOTAS ORDINÁRIAS.]',
    q'[reforma-da-previdencia-majoracao-das-aliquotas-ordinarias]',
    q'[<p>A nova previdência (EC 103/19) foi promulgada em 12/11/19 e com ela vieram as novas alíquotas ordinárias de contribuição previdenciária, que passaram a ser progressivas e que vão agora de 7,5% a 22%, a depender da faixa salarial, e que, se somadas ao imposto de renda, chegam ao confisco proibido no art. 150, inciso IV da CF/88.</p>
<p>Contra este confisco estão em curso duas ações judiciais coletivas da ANPPREV e SINPROPREV (Processo 1046283-20.2019.4.01.34, 20ª VF/SJ/DF e Processo 1046300-56.2019.4.01.340, 2ª Vara Federal) e diversas ADIs no STF.</p>
<p>Não obstante, enquanto as ações não forem julgadas ou as antecipações de tutela e as liminares em ADI (que possuem com efeitos erga omnes) não forem deferidas, a nova previdência estará valendo e as novas contribuições majoradas serão devidas. Porém, conforme o próprio texto da EC 103/19, só serão cobradas a partir de 1º de março de 2020 e aplicadas sobre os vencimentos, proventos e pensões de março e pagos em abril.</p>
<p>Assim, quem já teve desconto de contribuição a maior no contracheque de janeiro/2020, deve procurar a área de RH do seu órgão pagador e checar o motivo pois é possível que existam erros.</p>
<p>Não haverá erro, porém, se a majoração teve por base o aumento do teto do RPPS, que em 2020 passou de R$ 5.839,45 para R$ 6.101,06, como é o caso das contribuições para o FUNPRESP.</p>
<p>Também não haverá erro se o aumento foi operado em razão da revogação do § 21 do art. 40 da CF que, introduzido pela EC 47/05, permitiu, por mais de uma década, que aposentados e pensionistas acometidos por doenças graves e incapacitantes ficassem isentos do pagamento de contribuição previdenciária até o limite de duas vezes o valor do teto do RPPS. Considerando que até a reforma o teto do INSS era de R$ 5.839,45, somente incidia o desconto previdenciário a partir de vencimentos superiores a R$ 11.678,90 e apenas sobre o valor excedente a esse limite. Como agora o benefício acabou, desde 11/11/19, data da promulgação da EC 103/19, aposentados e pensionistas federais passaram a pagar a contribuição sobre a totalidade dos seus rendimentos.</p>]',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'[https://anpprev.org.br/conteudo/5081/reforma-da-previdencia-majoracao-das-aliquotas-ordinarias]',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    30,
    TO_DATE('2020-01-20', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2020-01-20', 'YYYY-MM-DD')
)
/

COMMIT
/
