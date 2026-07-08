-- Import de artigos ANPPREV para WKSP_SINDICATTO.CONTENT
-- Gerado a partir dos HTMLs salvos em 'Menu Editorial - Artigos.zip'.
-- Destino original: sind-oracle/database/imports/anpprev/20260708-1313-artigos.sql
-- Idempotente: remove os mesmos slugs antes de inserir, evitando duplicidade em reexecução.

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

DELETE FROM WKSP_SINDICATTO.CONTENT
WHERE TENANT_CODE = 'anpprev'
  AND CTYPE_CODE = 'artigos'
  AND SLUG IN (
    q'~acao-de-perda-de-cargo-de-magistrados-e-a-vulnerabilidade-dos-advogados-publicos-por-falta-de-prerrogativas-institucionais-minimas~',
    q'~a-advocacia-publica-e-as-atividades-exclusivas-de-estado~',
    q'~reforma-sindical~',
    q'~para-entender-a-votacao-da-reforma-da-previdencia~',
    q'~a-logica-da-reforma-administrativa-do-governo-bolsonaro~',
    q'~a-estabilidade-do-servidor-publico~',
    q'~27-anos-de-anpprev~',
    q'~os-trabalhadores-e-a-fiscalizacao-dos-fundos-de-pensao~',
    q'~o-fator-previdenciario~',
    q'~a-justica-prospectiva-na-seguridade-social~'
  );

-- 01. Ação de Perda de Cargo de Magistrados e a Vulnerabilidade dos Advogados Públicos por Falta de Prerrogativas Institucionais Mínimas
-- Origem: https://anpprev.org.br/conteudo/5368/acao-de-perda-de-cargo-de-magistrados-e-a-vulnerabilidade-dos-advogados-publicos-por-falta-de-prerrogativas-institucionais-minimas
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<strong>Autor/Fonte: </strong> Silton Bezerra Procurador Federal

<p>Em recente decisão, o ministro Flávio Dino, do Supremo Tribunal Federal (STF), anulou decisão do Conselho Nacional de Justiça (CNJ) que havia mantido a pena de aposentadoria compulsória a um juiz estadual do Rio de Janeiro. O STF reconheceu que essa modalidade de sanção, que foi aplicada ao magistrado, foi extinta pela Emenda Constitucional (EC) 103/2019 (Reforma da Previdência) e que a tramitação do caso no Conselho violou o devido processo legal.</p><p>Para o Ministro, com a extinção desse tipo de sanção (sanção administrativa aplicada aos magistrados), não faz sentido que esse grupo de servidores do Estado fiquem imunes a um sistema efetivo de responsabilidade disciplinar. A seu ver, as infrações graves devem ser punidas com a perda do cargo, que, por conta da garantia da vitaliciedade da magistratura, depende de ação judicial.</p><p>No seu entendimento, a ação judicial deve ser apresentada diretamente no STF pela Advocacia-Geral da União, pois, somente o STF tem competência para analisar o conteúdo da decisão administrativa do CNJ.</p><p>Nesse contexto, é importante destacar que a atribuição de promover a competente ação judicial de perda de cargo de membro da Magistratura foi assumida pela Advocacia Geral da União, órgão que congrega os Membros da Advocacia Pública Federal.</p><p>Essa enorme responsabilidade, de promover ação de perda de cargo de magistrado condenado disciplinarmente, bem como a de recompor o erário quanto a eventuais prejuízos causados por sua atuação ilícita, contrasta com a lamentável carência de garantias institucionais dos membros da Advocacia Pública.</p><p>No caso, a carreira promotora destas ações não possui sequer a garantia mínima da exclusividade do exercício de suas funções por seus membros. É dizer, em outras palavras, que a depender do chefe do Poder Executivo em exercício e a partir dos seus critérios, em tese, poderá haver ações desta modalidade, de sensibilíssima análise, sendo ajuizadas por advogados privados que estejam ocupando temporariamente cargos públicos dentro da Advocacia Geral da União.</p><p>A possibilidade de deixar Magistrados à mercê de vingança privada; ou mesmo, a possibilidade de Membros da Advocacia Pública Federal tornarem-se vítimas de perseguições de autoridades apenadas ou que estejam em curso de apuração de irregularidades, exige uma reflexão detalhada da repercussão desta, sem dúvidas, moralizadora decisão do STF, que, entretanto, deve avançar mais para que as autênticas intenções republicanas não morram na praia e tenham eficácia mínima.</p><p>Uma resposta imediata para parte dessas preocupações da Advocacia Pública está dentro da governabilidade da própria Corte Constitucional. Estamos falando da Proposta da Súmula~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ Vinculante (PSV) Nº 18.</p><p>A PSV Nº 18 – STF consagra a tese de que o exercício das funções da Advocacia Pública Federal constitui atividade exclusiva dos seus integrantes efetivos, a teor dos artigos 131 e 132 da Constituição Federal de 1988, tendo com redação seguinte teor: “O exercício das funções da Advocacia Pública, na União, nos Estados e nos Municípios, nestes onde houver, constitui atividade exclusiva dos seus integrantes efetivos, a teor dos artigos 131 e 132 da Constituição Federal de 1988”.</p><p>A Proposta de Súmula Vinculante nº 18 está madura para julgamento já contando com a manifestação favorável da Procuradoria Geral da República (Parecer nº 772) e do Advogado Geral da União (maio de 2016), restando, no presente momento, ser colocada em pauta para votação.</p><p>A publicação da referida Súmula Vinculante permite blindar de interferências indevidas o exercício republicano das atribuições dos Advogados Públicos nas suas várias áreas de atuação, principalmente no exame criterioso da promoção da competente ação judicial de perda de cargo de membro da Magistratura.</p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~acao-de-perda-de-cargo-de-magistrados-e-a-vulnerabilidade-dos-advogados-publicos-por-falta-de-prerrogativas-institucionais-minimas~',
        10,
        'published',
        q'~Ação de Perda de Cargo de Magistrados e a Vulnerabilidade dos Advogados Públicos por Falta de Prerrogativas Institucionais Mínimas~',
        v_contents,
        'html',
        TO_DATE('26/03/2026', 'DD/MM/YYYY'),
        TO_DATE('26/03/2026', 'DD/MM/YYYY'),
        TO_DATE('26/03/2026', 'DD/MM/YYYY'),
        q'~Ação de Perda de Cargo de Magistrados e a Vulnerabilidade dos Advogados Públicos por Falta de Prerrogativas Institucionais Mínimas~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 02. A Advocacia Pública e as atividades exclusivas de Estado
-- Origem: https://anpprev.org.br/conteudo/1109/a-advocacia-publica-e-as-atividades-exclusivas-de-estado
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p>Veja <a href="https://anpprev.org.br/download.php?idm=12255&amp;f=uploads/20220130204526_estudo-anpprev-carreiras-exclusivas-150621--281-29.pdf" rel="noopener noreferrer" target="_blank" title="Clique para fazer download do arquivo">aqui</a> estudo - encomendado pela ANPPREV - do consultor legislativo e advogado Luiz Alberto dos Santos, sobre a advocacia pública no contexto das atividades exclusivas de Estado. </p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~a-advocacia-publica-e-as-atividades-exclusivas-de-estado~',
        20,
        'published',
        q'~A Advocacia Pública e as atividades exclusivas de Estado~',
        v_contents,
        'html',
        TO_DATE('01/07/2021', 'DD/MM/YYYY'),
        TO_DATE('01/07/2021', 'DD/MM/YYYY'),
        TO_DATE('01/07/2021', 'DD/MM/YYYY'),
        q'~A Advocacia Pública e as atividades exclusivas de Estado~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 03. REFORMA SINDICAL
-- Origem: https://anpprev.org.br/conteudo/1108/reforma-sindical
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p> Em contraponto à proposta de Reforma Sindical que deverá ser apresentada pelo Grupo de Altos Estudos do Trabalho (GAET), instituído pela Portaria n.º 1.001 da Secretaria Especial de Previdência e Trabalho do Ministério da Economia, o deputado Marcelo Ramos (PL/AM) vem debatendo com centrais sindicais e com confederações patronais a apresentação de Proposta de Emenda à Constituição (PEC) com objetivo de atualizar o atual sistema sindical, saindo do atual modelo de unicidade para uma espécie de liberdade sindical mitigada. A proposta, que deverá ser formalizada na próxima semana, pretende estabelecer que a organização de trabalhadores e empregadores será definida por setor econômico ou ramo de atividade, sendo que a base territorial do sindicato será definida pelos trabalhadores ou empregadores interessados, não podendo ser inferior a área de um município, impedindo, portanto, a criação de sindicato por empresa. Além disso, deverá assegurar que a entidade sindical possa pleitear, por meio de plebiscito ou consulta estruturada, a exclusividade de representação por período a ser definido pelo Conselho Nacional de Organização Sindical (CNOS), que será responsável por regular o sistema sindical. No âmbito do serviço público, a proposta pretende assegurar o direito à livre associação sindical e à negociação coletiva, conferindo prazo para a regulamentação da Convenção n.º 151 da OIT.</p><p> </p><p><strong>Fonte/Autor:</strong><em> Queiroz Assessoria Parlamentar</em></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~reforma-sindical~',
        30,
        'published',
        q'~REFORMA SINDICAL~',
        v_contents,
        'html',
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        q'~Artigo: REFORMA SINDICAL~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 04. PARA ENTENDER A VOTAÇÃO DA REFORMA DA PREVIDÊNCIA
-- Origem: https://anpprev.org.br/conteudo/1106/para-entender-a-votacao-da-reforma-da-previdencia
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p>O resultado da votação da reforma da Previdência pode ser explicado a partir da composição do Congresso, de perfil liberal e fiscalista, do ambiente de crise fiscal do Estado brasileiro, além da dedicação exclusiva do residente da Câmara e da equipe econômica à aprovação da matéria.</p><p>Para explicar a questão de fundo, que é o perfil político do Congresso eleito em 2018, vamos organizar o raciocínio em torno da narrativa em moda, que divide os parlamentares entre representantes da “nova” e da “velha” política.</p><p>A chamada “nova política”, nessa perspectiva, seria representada pelos “novos” parlamentares, de perfil liberal e fiscalista, eleitos com apoio das redes sociais, a partir de um discurso moralista de combate à corrupção e de eficiência do gasto público.</p><p>Esses “novos” parlamentares, como regra, estão distribuídos nos partidos do centro à extrema direita do espectro político, e, como exceção, em partidos de centro-esquerda, como PDT, PSB e Cidadania.</p><p>Para eles, quem garante a justiça é a eficiência da economia, que por sua vez gera emprego renda, e o esforço individual das pessoas, responsável por criar as condições de empregabilidade, e não as políticas públicas ofertadas pelo Estado. É uma visão meritocrática e individualista, do tipo “a cada um segundo sua capacidade”.</p><p>Por isso, essa parcela do Parlamento apoia as reformas fiscais e liberais, como esta da Previdência, por convicção.</p><p>Os chamados representantes da “velha” política, vistos de forma negativa pela narrativa em voga, seriam os “reeleitos”, porém divididos em dois grupos: um formado pelos partidos de esquerda; e outro representado pelo “centrão”.</p><p>O primeiro grupo, de esquerda, também pode ser classificado em dois tipos de parlamentares: os gastadores de recursos públicos (perdulários) e os que usam o Estado para sobreviver politicamente.</p><p>Para esse grupo, a realização da justiça social depende de condições materiais, de igualdade de oportunidades e de políticas públicas do Estado. Sem essa proteção coletiva, o segmento pobre não teria oportunidade. Trata-se, portanto, de uma visão solidária, do tipo “a cada um segundo sua necessidade”.</p><p>Esses grupos, por serem supostamente intervencionistas na economia e defensores do Estado máximo, seriam contrários a qualquer tipo de reforma que reduzisse o gasto público.</p><p>O segundo grupo, formado por parlamentares do “centrão”, seria a tropa do “toma-lá-dácá”, sem qualquer compromisso programático. São vistos como “sanguessugas”, que condicionam o apoio às reformas à troca de recursos do orçamento, mesmo pertencendo a partidos de visão liberal e fiscalista.</p><p>O “centrão”, apresentado como “fisiológico” perante a opinião pública e temendo ser responsabilizado por eventual colapso das~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ contas públicas, utilizou uma estratégia inteligente: exigir mudança no conteúdo da reforma, para “demonstrar sensibilidade social”, mas sem abrir mão da liberação das emendas parlamentares.</p><p>A estratégia funcionou. O governo cedeu no conteúdo, abrindo mão do regime de capitalização, do Benefício de Prestação Continuada (BPC) e da mudança na aposentadoria dos trabalhadores rurais, e ainda teve que liberar as emendas desse grupo.</p><p>Vale lembrar que a estratégia funcionou também porque a esquerda bateu fortemente  naqueles pontos, considerados perversos para com os mais pobres, com grande repercussão na mídia comercial e nas redes sociais.</p><p>Esses parlamentares do “centrão”, por pertencerem a partidos conservadores e de visão liberal fiscal, mesmo sem maiores convicções, não teriam alternativa a não ser apoiar a reforma.</p><p>Uma estratégia pragmática num momento em que ela [a reforma] passou a ter apoio na opinião pública, além de sempre ter sido defendida por seus aliados no mercado, na mídia e no governo.</p><p>As concessões em termos de conteúdo, embora tímidas, ajudaram na formação de maioria em outros partidos, porque deram aos parlamentares refratários o argumento de terem melhorado a reforma. Contudo, foi a liberação das emendas que motivou o “centrão” a votar em favor do texto.</p><p>Por essa leitura, com exceção da esquerda, que votaria contra a agenda de reformas com esse viés fiscal, todos os demais votariam a favor, incluindo os “novos”, por convicção, e os do “centrão” por sobrevivência.</p><p>Com um Congresso majoritariamente alinhado com a visão liberal fiscal – e num ambiente marcado por forte risco de colapso nas contas públicas, que expõe de modo dramático a necessidade de equilíbrio nas contas públicas – as condições para aprovar agendas com esse escopo seriam facilitadas.</p><p>O fato de o orçamento estar congelado, em termos reais, e de a despesa previdenciária ser a maior, após a dos juros das dívidas interna e externa, facilitou a estratégia do governo, do mercado e da mídia de jogarem luzes sobre o crescimento da despesa previdenciária, o que passou para a sociedade a percepção da necessidade e urgência da reforma.</p><p>Por fim, foi decisiva a determinação do presidente da Câmara e da equipe econômica em concentrar esforços na reforma. O envolvimento do deputado Rodrigo Maia, conhecidamente como um homem pró-mercado, foi de tal ordem que ele assumiu não apenas a articulação com os líderes partidários, mas também participou da negociação de conteúdo. Funcionou, na prática, como líder do governo, embora tenha dito que se tratava de uma agenda do Congresso.</p><p>Esse tende a ser o padrão de votação em matérias da agenda liberal e fiscal do governo.</p><p>Terá a esquerda contra, mas contará com os “novos” sem~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ custo e com o “centrão”, ainda que tenha que pagar pedágio via liberação de emendas parlamentares.</p><p> </p><p><strong>Fonte/Autor:</strong> <em>Queiroz Assessoria Parlamentar</em></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~para-entender-a-votacao-da-reforma-da-previdencia~',
        40,
        'published',
        q'~PARA ENTENDER A VOTAÇÃO DA REFORMA DA PREVIDÊNCIA~',
        v_contents,
        'html',
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        q'~Artigo: PARA ENTENDER A VOTAÇÃO DA REFORMA DA PREVIDÊNCIA~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 05. A LÓGICA DA REFORMA ADMINISTRATIVA DO GOVERNO BOLSONARO
-- Origem: https://anpprev.org.br/conteudo/1107/a-logica-da-reforma-administrativa-do-governo-bolsonaro
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p>Tendo como pano de fundo a crise econômica e financeira do Estado brasileiro e também invocando a necessidade de racionalização da força de trabalho do Poder Executivo federal, o governo Bolsonaro pretende promover ampla reforma administrativa, com medidas voltadas para a descentralização, a redução do gasto governamental e a revisão do tamanho e do papel do Estado.</p><p>O novo desempenho ou a reestruturação da Administração Pública, que incluiria medidas constitucionais e infraconstitucionais, algumas das quais já em tramitação no Congresso Nacional, deve focar na automação e digitalização dos serviços públicos e na redução de custos com estrutura e pessoal. O trabalho está sendo formulado e coordenado pela Secretaria Especial de Desburocratização, Gestão e Governo Digital, do Ministério da Economia, que tem sob sua subordinação a Secretaria de Gestão e Desempenho de Pessoal.</p><p>A ideia geral, dentro da lógica do ajuste fiscal, consistiria:</p><p><strong>1) no enxugamento máximo das estruturas e do gasto com servidores, com extinção de órgãos, entidades, carreiras e cargos; </strong></p><p><strong>2) na redução do quadro de pessoal, evitando a contratação via cargo público efetivo; </strong></p><p><strong>3) na redução de jornada com redução de salário; </strong></p><p><strong>4) na instituição de um carreirão horizontal e transversal, com mobilidade plena dos servidores; </strong></p><p><strong>5) na adoção de critérios de avaliação para efeito de dispensa por insuficiência de desempenho; </strong></p><p><strong>6) na ampliação da contratação temporária; e </strong></p><p><strong>7) na autorização para a União criar fundações privadas, organizações sociais e serviço social autônomo – cujos empregados são contratados pela CLT –para, mediante delegação legislativa, contrato de gestão ou mesmo convênio, prestar serviço ao Estado, especialmente nas áreas de Seguridade (Saúde, Previdência e Assistência Social), Educação, Cultura e Desporto, Ciência e Tecnologia, Meio Ambiente, Turismo e Comunicação Social, entre outros. </strong></p><p>Além da redução das estruturas e de pessoal, bem como da adoção dessas novas modalidades de contratação, algo que iria absorver as atividades dos órgãos, das entidades e de carreiras extintos, o governo também pretende:</p><p><strong>1) intensificar a descentralização, mediante a transferência de atribuições e responsabilidades para estados e municípios; </strong></p><p><strong>2) criar programas de automação e digitalização de serviços, especialmente no campo da seguridade social; </strong></p><p><strong>3) terceirizar vários outros serviços públicos, inclusive na atividade-fim, como previsto na Lei 13.429/2017; e </strong></p><p><strong>4) regulamentar, de modo restritivo o direito de greve do servidor público.~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ </strong></p><p>Esse novo desenho, na verdade, já vinha sendo implementado, ainda que de forma tímida, porque burlava o princípio do Regime Jurídico Único. A temática vem sendo abordada desde os governos Fernando Collor, que criou o serviço social autônomo Associação das Pioneiras Sociais (APS); Fernando Henrique, que qualificou como Organização Social a Associação de Comunicação Educativa Roquette Pinto, passando pelos governos Lula, que criou, como serviço social autônomo, a Agência de Promoção de Exportações (APEX); e a Associação Brasileira de Desenvolvimento Industrial (ABDI); e Dilma, que enviou ao Congresso o Projeto de Lei Complementar (PLP) 92/2007 autorizando a criação de fundações estatais de direito público ou privado para o exercício de atividades não-exclusivas de Estado, criou novas organizações sociais, entre elas a EMBRAPII, criou o serviço social autônomo Agência Nacional de Assistência Técnica e Extensão Rural - ANATER e enviou ao Congresso proposta de criação de outros dois (Agência de Desenvolvimento do Matopiba e do Instituto Nacional de Saúde Indígena), até chegar ao governo Michel Temer, que retomou com força as privatizações por meio do Programa de Parcerias e Investimentos, propôs a criação da Agência Brasileira de Museus e apoiava o Projeto de Lei 10.720/2018, do senador José Serra (PSDB-SP), atualmente em tramitação na Câmara dos Deputados, que escancara a qualificação de entidades como organizações sociais, habilitadas a prestar serviço ao Estado em diversas áreas.</p><p>Entretanto, no governo Bolsonaro, o que era exceção, tende a virar regra. Além da elaboração de Emenda à Constituição, de Medida Provisória, de Projeto de Lei e Decretos do Poder Executivo, o plano governamental é aproveitar alguns projetos em tramitação no Congresso para acelerar a implementação da reforma administrativa. Entre estes, o governo deve apoiar a aprovação dos projetos de Lei Complementar nº 248/1998, em fase final de tramitação na Câmara, e o PLP nº116/2017, da senadora Maria do Carmo (DEM-SE), em regime de urgência no Senado, que tratam da quebra da estabilidade no serviço público; do PLP nº 92/2007, do governo Dilma, que autoriza a criação de fundações estatais; o PL 10.720/2018, do senador José Serra (PSDB-SP), que prevê novas formas de contrato de gestão, por intermédio de organizações sociais; e do PLP nº 268/2016, do ex-senador Valdir Raupp (MDB-RO), que reduz a participação dos segurados e assistidos na governança dos fundos de pensão.</p><p>Dentro dessa nova lógica, o governo Bolsonaro já anunciou o fim dos concursos públicos e dos reajustes salariais, propôs dura reforma da previdência, que retira direito de segurados, aposentados e pensionistas, e também editou a MP 890/2019, que autoriza o Poder Executivo a instituir serviço~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ social autônomo denominado Agência para o Desenvolvimento da Atenção Primária à Saúde – Adaps, que será responsável pela execução do Programa Médicos pelo Brasil.</p><p>O programa Future-se, anunciado pelo Ministério da Educação, também será criado e administrado por meio da constituição de serviço social autônomo. No Distrito Federal, ainda no governo Rollemberg, o Hospital de Base de Brasília, um dos principais da cidade, foi transformado em 2017 em serviço social autônomo, responsável pela prestação de assistência médica à população e de atividades de ensino, pesquisa e gestão no campo da saúde, com o beneplácito do Tribunal de Justiça do DF, que considerou constitucional a medida. Trata-se, porém, de entidades regidas pelo direito privado, que não integram a administração e não se submetem aos regramentos gerais do Serviço Público, com pessoal contratado pela CLT e sem a necessidade de concurso público, mas apenas processo seletivo.</p><p>A visão do governo sobre os servidores e o Serviço Público é a pior possível. Os primeiros são vistos pelo governo como “parasitas”, que ganham muito e trabalham pouco, além de serem aliados e estarem a serviço da esquerda. O segundo é associado à ineficiência e à corrupção.</p><p>Na lógica do atual governo, ressuscitando teses caras ao neoliberalismo e à “Nova Gerência Pública”, adotada por FHC em 1995, e que foram implementadas à larga pelos governos tucanos em todo o Brasil, adquirir bens e serviços no setor privado é mais eficiente e mais barato que produzir diretamente pelo Estado. Por isso, esse preconceito e investida sobre os serviços públicos.</p><p>A julgar pelas declarações e ações do atual governo, a reforma administrativa será a bola da vez, ou seja, o servidor e o serviço público serão escolhidos como a variável do ajuste. Aliás, o aumento de alíquotas e a progressividade da contribuição previdenciária, combinados com a contribuição extraordinária e o fim dos reajustes, já são sinais mais que suficientes do período de dificuldades que se avizinha para o funcionalismo público. É a tempestade perfeita pela combinação da crise fiscal, do congelamento de gasto público determinado pela EC 95/2016 e do preconceito governamental para com o serviço e o servidor público.</p><p> </p><p><strong>Fonte/Autor:</strong> <em>Queiroz Assessoria Parlamentar</em></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~a-logica-da-reforma-administrativa-do-governo-bolsonaro~',
        50,
        'published',
        q'~A LÓGICA DA REFORMA ADMINISTRATIVA DO GOVERNO BOLSONARO~',
        v_contents,
        'html',
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        TO_DATE('24/12/2019', 'DD/MM/YYYY'),
        q'~Artigo: A LÓGICA DA REFORMA ADMINISTRATIVA DO GOVERNO BOLSONARO~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 06. A ESTABILIDADE DO SERVIDOR PÚBLICO
-- Origem: https://anpprev.org.br/conteudo/1104/a-estabilidade-do-servidor-publico
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p> </p><p>O instituto da estabilidade do servidor público não é novidade. Ele nasceu no Brasil em 1915 com a Lei nº 2.924/15, foi recepcionado pela Constituição de 1934 e desde então tem sido mantido em todas as Constituições. Antes da Constituição Federal de 1988 era direito conferido após 2 anos de efetivo exercício e o servidor só perderia o cargo por infração disciplinar grave apurada em processo administrativo disciplinar. A partir da Magna Carta de 1988 o instituto foi flexibilizado e a estabilidade passou a ser conferida após 3 anos ao servidor admitido em concurso público e aprovado em processo de avaliação especial de desempenho, sendo possível a sua perda nos casos de sentença judicial transitada em julgado, processo administrativo disciplinar, insuficiência de desempenho verificada por avaliação periódica e também nas situações de excesso de despesa com pessoal nos termos do art. 169, § 4º da CF, que prevê que o fim da estabilidade e a perda do cargo ocorrerão quando a União, os Estados, o Distrito Federal e os Municípios adotarem as medidas de contenção de despesas com pessoal ativo e inativo - como a redução de 20% das despesas com cargos em comissão e funções de confiança e a exoneração dos não estáveis – e essas medidas não forem suficientes para adequar os gastos dentro dos limites estabelecidos na lei complementar nº. 101/2000 (Lei de Responsabilidade Fiscal).</p><p>A finalidade do instituto é assegurar aos ocupantes de cargos públicos a permanência no serviço público sem que precisem se submeter a ingerências de natureza política ou a pressões de grupos econômicos interessados em privilégios e favorecimentos. O intento é evitar que os servidores, no exercício das suas atribuições, sejam coagidos, de qualquer forma, a atuar em desacordo com o princípio da impessoalidade e em detrimento do interesse público, sendo incontroverso que servidores nomeados com base em critérios políticos para cargos de livre exoneração são extremamente vulneráveis a pressões, podendo agir, para o bem ou para o mal, a mando daqueles que tem poder para nomeá-los ou exonerá-los.</p><p>Pois é aí que reside o X da questão. Não se nega a necessidade de medidas que melhorem quadros de pessoal e resultem em serviços públicos de excelência. Também não se nega que o Brasil atravessa no atual momento uma severa crise fiscal, o que justificaria a aplicação do citado art. 169. Tudo isso é notório. O problema é que o texto constitucional confere aos servidores imunidades cujo objetivo primordial é o zelo e o cumprimento de deveres inerentes às funções públicas de modo a que haja um serviço público melhor prestado e cidadãos satisfeitos com seus direitos.</p><p>Nesses termos, negar a estabilidade ao servidor pode ser o mesmo que negar à população o cumprimento dos~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ princípios da legalidade, impessoalidade, moralidade e eficiência tratados no art. 37 da Constituição e subjugar os interesses e direitos dos cidadãos a descomedimentos de detentores do Poder estatal. O que se perde podem não ser privilégios do servidor, mas o poder do cidadão de ser tratado com isonomia, impessoalidade, honestidade e de ter o direito político a uma administração eficiente.</p><p>Também pode ser a negativa das alternativas. Uma delas foi recentemente apontada pelo Supremo Tribunal Federal ao decidir a ADI 2238. Ao julgar dispositivo da Lei de Responsabilidade Fiscal, o Tribunal entendeu que alternativamente à perda do cargo uma das soluções que podem ser adotas para minimizar crises fiscais é a redução da jornada de trabalho do servidor, desde que não haja a redução de vencimentos.</p><p>Então, por que o governo pretende o fim da estabilidade constitucional? Porque servidores protegidos pela estabilidade são acomodados e ineficientes e isso impede a Administração de se modernizar e produzir melhores resultados, ou porque quer reduzir quadros de pessoal e terceirizar o serviço público? Seja qual for o motivo estaremos diante de um retrocesso histórico já que a estabilidade, criada desde antes da Constituição de 1934, surgiu não para a proteção do servidor, mas da sociedade, que tem direito a uma Administração exercida sem desvios de finalidade. E porque juridicamente esta é uma iniciativa sem motivação posto que o mais acertado seria tratar do assunto, um direito constitucional, no plano infraconstitucional, regulamentando-o de maneira objetiva, aprofundada, com justiça e sem influencias políticas.</p><p>Pois é visando essa objetividade, e para que uma medida dessa envergadura não seja manipulada por governos de plantão, que entidades de classe têm lutado contra projetos que, sob o argumento de que o País atravessa uma crise fiscal, defendem que a estabilidade do servidor público precisa ser retirada da Constituição.</p><p>Ao contrário das motivações alardeadas, nos termos da Constituição e da legislação atual a estabilidade do servidor não impossibilita a demissão daqueles que não cumprem seus deveres e não evita avaliações de desempenho, que, se ruins, levarão à perda do cargo. Também não engessa gastos públicos impedindo reduções de despesas com pessoal que buscam o equilíbrio de contas públicas em momentos de severa crise fiscal. Opostamente, o servidor pode ser dispensado em situações de crise e o servidor estável que se mostre desqualificado pode, sim, perder o cargo. Mesmo após aprovação em estágio probatório voltado para a seleção de profissionais que atendam aos requisitos necessários ao bom desempenho do serviço público ele poderá passar por processo que legitime o seu desligamento.</p><p>A opinião pública, alimentada por~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ informações manipuladas, passou a desenvolver um conceito equivocado sobre o princípio da estabilidade e a considera-lo prejudicial à sociedade sob o entendimento de que ele engessa a Administração e se presta a que servidores inaptos sejam mantidos no cargo mesmo não desempenhando adequadamente suas funções. É preciso alertar que, muito pelo contrário, a estabilidade do servidor não imobiliza a Administração. Independente dela, cargos, carreiras e estruturas podem ser declarados desnecessários e extintos ficando o servidor estável em disponibilidade até aproveitamento em outro cargo. Assim dispõe o art. 41, § 3º, da CF/88.</p><p>Também impõe-se advertir que a estabilidade vai muito além de servir a impedir perseguições políticas e pessoais a servidores e a evitar que órgãos públicos percam profissionais qualificados. Mais que isso, ela previne que junto ao poder oficial sejam instaladas forças paralelas de domínio e que são verdadeiros obstáculos à gestão pública comprometida com os direitos da sociedade.</p><p>Por fim, é preciso registrar que a Constituição não estabelece privilégios, muito menos para servidores públicos. Através do princípio da estabilidade o que a Constituição estabelece é a proteção do interesse público coletivo. A manutenção do Estado Democrático de Direito. A garantia da segurança jurídica. Projetos que acabam com a estabilidade constitucional precisam, portanto, ser combatidos. Não porque servidores querem mantê-la, mas porque cidadãos dela necessitam.</p><p> </p><p> </p><p><strong>Fonte/Autor:</strong> <em>Thelma Goulart</em></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~a-estabilidade-do-servidor-publico~',
        60,
        'published',
        q'~A ESTABILIDADE DO SERVIDOR PÚBLICO~',
        v_contents,
        'html',
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        q'~Artigo: A ESTABILIDADE DO SERVIDOR PÚBLICO~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 07. 27 ANOS DE ANPPREV
-- Origem: https://anpprev.org.br/conteudo/1105/27-anos-de-anpprev
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p>27 anos! Mais de um quarto de século!</p><p>L e m b r o - m e bem de uma cena: estávamos com o jornal Correio Braziliense nas mãos quando o Procurador-Geral à época, Dr. Francisco Adalberto da Nóbrega, perguntou porque estávamos tão aborrecidos. Dissemos: “Olha esta notícia. Estamos próximos à isenção na tabela do imposto de renda”. Depois de sermos por anos os “Príncipes da República”, vimos nosso salário ser achatado vergonhosamente. Chamou-nos ele às falas: por que vocês não se unem? Não adianta vozes soltas reclamando, vocês precisam de uma associação, forte, para defender suas bandeiras.</p><p>E foi assim, com o auxílio desse ilustre anppreviano honorário, que nossa colega Meire Monteiro ousou criar a Anpprev. Concretizada, logo arregimentou a categoria em torno dos ideais que desde então nortearam a Associação. E conseguimos respeito e novamente termos salários compatíveis com a importância do trabalho que desenvolvemos.</p><p>Logo fizemos o primeiro congresso, em Caldas Novas, Goiás. Em 15 dias organizamos o evento, com presença expressiva dos associados de todo Brasil. E, no meio das palestras, o imprevisto aconteceu: acabou a energia elétrica no resort. O calor comum à região era intenso. O ar condicionado, claro, inoperante. E ninguém saiu do auditório. Queríamos ouvir e sermos ouvidos. O então presidente do INSS, Cesar Gasparin, presidente da Anfip, disse ao microfone que nunca tinha presenciado um tal interesse de uma categoria nos destinos do órgão e da carreira. Foi, realmente, impressionante.</p><p>Então, colegas, se estamos hoje, como os demais servidores públicos, vendo nossas prerrogativas e conquistas ameaçadas, vamos à luta! Somos importantes para o Estado. E nós, os aposentados, sabemos quanto suor foi preciso para vermos implantadas a AGU, a PGF, a modernização das procuradorias. Ainda há vida depois da aposentadoria: não vamos ficar inertes, descansando sobre os louros.</p><p>Nesses 27 anos contamos, sempre, com o apoio da Anpprev, que ao longo dos quais se fez respeitada, abrindo portas dos gabinetes institucionais, levando nossos pleitos às autoridades. Vamos dar a contrapartida: nos engajarmos nas campanhas (como agora, contra a Reforma da Previdência, no que ela tem de perniciosa), sempre que para isto convocados.</p><p>Mas, como já dito, ninguém entra em um mesmo rio uma segunda vez, pois quando isso acontece já não se é o mesmo, assim como as águas já serão outras. Tudo mudou ao longo desses anos. Nós, a administração pública, a Anpprev. Nada é permanente, exceto a mudança.</p><p>E o jornal já distribuído pela atual diretoria mostrou as conquistas feitas, no campo das parcerias institucionais, na representação da categoria, nos convênios firmados. Temos procurado ficar à altura das gestões anteriores, nos que elas~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ tiveram de melhor, mas trazendo nosso jeito de ser diferente, cumprindo as promessas de campanha.</p><p>Esta gestão, onde alguns componentes são anpprevianos de primeira hora, vem demonstrando domínio e conhecimento dos problemas que atingem os associados. O caminho buscado do equilíbrio e da satisfação coletiva está sendo traçado com idealismo e mentes sintonizadas.</p><p>Sempre haverá aqueles descontentes. Há apenas uma forma de evitar críticas: não fazer nada, não dizer nada, não ser nada. E a omissão não é uma característica desta gestão. Confiamos em que, juntos com os associados, poderemos alcançar ainda muitas vitórias.</p><p>Parabéns à Anpprev e todos os Anpprevianos! Vida longa à Anpprev!</p><p> </p><p><strong>Fonte/Autor:</strong> <em>Vera Sarmet</em></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~27-anos-de-anpprev~',
        70,
        'published',
        q'~27 ANOS DE ANPPREV~',
        v_contents,
        'html',
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        TO_DATE('23/12/2019', 'DD/MM/YYYY'),
        q'~Artigo: 27 ANOS DE ANPPREV~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 08. Os trabalhadores e a fiscalização dos fundos de pensão
-- Origem: https://anpprev.org.br/conteudo/1093/os-trabalhadores-e-a-fiscalizacao-dos-fundos-de-pensao
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<strong>Autor/Fonte: </strong> Boletim do DIAP

<p><a href="https://anpprev.org.br/download.php?idm=125&amp;f=uploads/anp_data/editor/boletim_diap_nov_2001.pdf" rel="noopener noreferrer" target="_blank" title="Clique para fazer download do arquivo">Clique aqui </a>para ver o boletim</p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~os-trabalhadores-e-a-fiscalizacao-dos-fundos-de-pensao~',
        80,
        'published',
        q'~Os trabalhadores e a fiscalização dos fundos de pensão~',
        v_contents,
        'html',
        TO_DATE('01/11/2001', 'DD/MM/YYYY'),
        TO_DATE('01/11/2001', 'DD/MM/YYYY'),
        TO_DATE('01/11/2001', 'DD/MM/YYYY'),
        q'~Artigo: Os trabalhadores e a fiscalização dos fundos de pensão~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 09. O fator previdenciário
-- Origem: https://anpprev.org.br/conteudo/1092/o-fator-previdenciario
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p><b>Meire Lúcia G. M. M. Coelho</b><br/><br/>O impacto do fator previdenciário no valor médio das aposentadorias dos homens e<br/>das mulheres no Brasil.<br/>Há quase dez anos, após vigoroso debate no Congresso Nacional e nas esferas<br/>sindicais e acadêmicas, a previdência social brasileira adotou o fator previdenciário (Lei<br/>9.876/99).<br/>Antes, a fórmula da aposentadoria calculava o salário de beneficio pela média das<br/>últimas 36 (trinta e seis) contribuições, variando de 70% a 100% a média dos salários. Com o<br/>fator previdenciário foram adotados critérios atuariais próprios da previdência privada como o<br/>tempo de contribuição, a idade do trabalhador na data da aposentadoria e a expectativa de<br/>sobrevida. Na realidade, a nova regra, introduziu a idade mínina que fora rejeitada pelo<br/>Congresso Nacional na reforma previdenciária de 1998.<br/>Aclamado como remédio para combater o déficit das contas da previdência social, o<br/>fator previdenciário, segundo o DIEESE- Departamento Intersindical de Estatísticas e<br/>Assuntos Socioeconômicos (Nota Técnica nº 45 de junho de 2007), “prejudica os<br/>trabalhadores mais pobres e menos especializados que, por força das circunstâncias, são<br/>levados a ingressar mais cedo no mercado de trabalho e que, para garantir o beneficio<br/>integral, devem permanecer mais tempo trabalhando”. Neste contexto, recomenda que na<br/>avaliação do déficit deve ser levado em conta duas particularidades do sistema previdenciário:<br/>“1ª ) a previdência faz parte da seguridade social, conforme estabelece a Constituição de 1988<br/>e 2ª) os efeitos da Desvinculação de Recursos da União(DRU) sobre o orçamento da<br/>seguridade social”.<br/><br/>A expectativa de vida é divulgada anualmente pelo IBGE – Instituto Brasileiro<br/>Geografia e Estatística. Para se ter uma idéia , em 1999, ano da implementação do fator<br/>previdenciário, a expectativa de vida do brasileiro ao nascer era 68,4 anos. Cinco anos depois,<br/>em 2005, a expectativa de vida passou a ser 71,9 anos. Como a tabela de expectativa de vida<br/>que varia, ano a ano, é fundamental para o fator, o impacto na redução do valor das<br/>aposentadorias é cada vez maior.<br/>O DIEESE retomou o tema, através da Nota Técnica nº 65, abril de 2008, mostrando<br/>que no período de 1999 a 2005houve uma redução significativa no valor das aposentadorias:<br/>“a introdução do fator previdenciário em 1999 teve impacto direto no valor das<br/>aposentadorias por tempo de contribuição, rebaixando a média dos valores das aposentadorias<br/>por contribuição em pelo menos 23% para os homens e em mais de 30% para as mulheres”.<br/>Assim, quando a economia brasileira volta a crescer e o governo se prepara para<br/>anunciar que dominou o déficit previdenciário ,~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ discutir as contradições do próprio fator e o<br/>impacto direto e indireto de sua aplicação ao longo do período da sua vigência, envolve os<br/>seguintes problemas, dentre outros: a) redução do valor inicial das aposentadorias em<br/>decorrência do aumento gradativo do índice de expectativa de vida; b) o agravamento da<br/>exclusão previdenciária para os trabalhadores mais pobres, da economia informal e das<br/>mulheres em razão da falta de estabilidade dos seus postos de trabalho; c) considerando que a<br/>taxa de juros do fator é maior quando a idade aumenta no momento da aposentadoria e menor<br/>quando aumenta o tempo de contribuição o trabalhador que ficar mais tempo contribuindo<br/>poderá não ser remunerado por uma taxa de juros maior;d) desde a sua implantação, é<br/>necessário identificar as diferenças no valor inicial das aposentadorias dos homens e das<br/>mulheres; e) qual a repercussão no cálculo das aposentadorias da alta variação nos últimos<br/>anos da tabela de expectativa de vida do IBGE- Instituto Brasileiro de Geografia e Estatística.<br/><br/>Em resumo, a questão que se nos apresenta é investigar a evolução do fator<br/>previdenciário no Brasil, identificando os problemas decorrentes da sua aplicação no valor<br/>das aposentadorias dos trabalhadores e a sua correlação na redução do déficit previdenciário e<br/>sustentabilidade da seguridade social que justificou a sua concepção e proposição.</p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~o-fator-previdenciario~',
        90,
        'published',
        q'~O fator previdenciário~',
        v_contents,
        'html',
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        q'~Artigo: O fator previdenciário~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

-- 10. A justiça prospectiva na seguridade social
-- Origem: https://anpprev.org.br/conteudo/1091/a-justica-prospectiva-na-seguridade-social
DECLARE
    v_contents CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_contents, TRUE);
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~<p><b>Por: Meire Lucia Gomes Monteiro Mota Coelho*</b><br/> <br/><i>A igualdade entre os sexos na Constituição Federal<br/><br/>A viabilidade do Instituto da Compensação de amparo no Brasil<br/></i><br/>A Previdência Social visa proteger o trabalhador e sua família. Em prol da família, hierarquia não há entre o cônjuge que comparece e produz no emprego e aquele que fica em casa, cuidando da família, inclusive dele. Se assim; se ambos prestam um serviço de idêntica magnitude, razão não há para que sejam tratados de modo diferente. <br/>O cônjuge de um trabalhador ou trabalhadora, que, por exemplo, aceita a condição de cuidar da família, presta um serviço tão importante quanto o outro cônjuge presta, como se diz, colocando a comida na mesa.<br/>Embora em pé de igualdade, apenas o que está formalmente empregado, fora do lar, é considerado trabalhador e possui, diretamente, as garantias da lei. O outro, prestando mais um serviço tão ou mais importante que o primeiro, é tido por dono ou dona de casa, não merecendo objetivamente, qualquer proteção legal. Sob o ponto de vista constitucional, diferença alguma há entre eles.<br/>Por essa razão, as conseqüências, funestas ou não, que possam advir das relações trabalhistas, previdenciárias, fiscais, patrimoniais ou assemelhadas, devem ser aquilates na exata proporção dessa simbiose.<br/>As desigualdades e injustiças ocorridas no âmbito das relações conjugais e a violência familiar são incompatíveis com o principio da igualdade e os mecanismos de proteção social a família, consagrados pela Constituição Federal.<br/>O princípio constitucional da igualdade entre sexos conclama pela equiparação dos direitos previdenciários. Deve ser garantida a proteção previdenciária do cônjuge não ativo que fica no lar, cuida dos filhos e da família - para o casal e para o Estado- deve ter direitos sobre o patrimônio previdenciário do cônjuge economicamente ativo.<br/>O estudo da justiça prospectiva na seguridade social, no Brasil, resume-se praticamente à singular, completa e profunda obra da Doutora Miriam de Abreu Machado e Campos: “Família no Direito Comparado – Divisão das Expectativas de Aposentadorias entre Cônjuges – Belo Horizonte, Del Rey. A discussão, o debate envolve a problematização, dentre outros, de institutos de direito civil, previdenciário, trabalho e tributário e no campo do Direito Constitucional e, especialmente no que se refere aos direitos sociais (com ênfase no Direito Civil, Previdenciário, Trabalhista). Além disso, um profundo mergulho na jurisprudência pátria, bem assim no Direito Comparado.<br/>O ponto de partida é a falta de sintonia entre a igualdade entre os sexos na Constituição e a desigualdade no que tange ao tratamento infraconstitucional dado ao cônjuge não ativo. No campo previdenciário, a~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ combinação tempo e contribuição, é avassaladora para aqueles que estão fora do mercado, que dedicam sua vida ativa aos filhos, aos idosos, aos que precisam de cuidados especiais, todos no âmbito familiar.<br/>Tal distorção, no nosso ordenamento jurídico, sob o ângulo da justiça prospectiva, requer a introdução de mecanismos legislativos que garantam a seguridade social do cônjuge hipossuficiente ( não ativo profissionalmente) ou daquele que exerce a função de “ cuidador do lar”. A pensão alimentícia, a licença maternidade, aposentadoria da dona de casa, o direito a seguridade na velhice não são garantias suficientes para uma justa compensação. <br/>Busca-se a concretização do princípio constitucional da igualdade entre os sexos (Art. 5º § 11 da CF) no âmbito conjugal partindo-se dos fundamentos que norteiam à seguridade social e a proteção a família. Para tanto, um grande passo é a possível incorporação ao direito pátrio do Instituto da Compensação de Amparo adotado em diversos países do mundo, notadamente, na Alemanha. <br/>No Congresso Nacional, começam a surgir proposições para atender à proteção social dos cuidadores de lar, do cônjuge não ativo. Inspirado, sem dúvida, na destacada obra da Doutora Miriam de Abreu Machado e Campos, bom exemplo é o projeto do Senador Augusto Botelho (PEC 93/2003) que propõe inserir na Constituição dispositivo que permita ao cônjuge que não trabalha fora do lar - ou trabalha parcialmente – a possibilidade de vir a participar das expectativas de aposentadoria constituídas pelo cônjuge que trabalha, após o rompimento do vinculo matrimonial. Não houve avanço.<br/>Existe um longo caminho a percorrer. A justiça prospectiva na seguridade social, na seara da entidade familiar, passa, em primeiro lugar, por políticas públicas que contemplem ações afirmativas contra a discriminação econômica do cônjuge, pela equiparação do trabalho doméstico, pela valorização da entidade familiar e combate às desigualdades e injustiças ocorridas no âmbito das relações conjugais. Clama Justiça Social.<br/>Em resumo, é extremamente pobre o atual panorama brasileiro da justiça prospectiva na seguridade social. Ainda assim, nosso tema justifica-se como uma pequena contribuição para abrir o debate e discussão sobre a Justiça Prospectiva no âmbito da família. A seguridade social do cônjuge não ativo. O Instituto da Compensação de Amparo. A viabilidade da compensação das expectativas de amparo de aposentadorias no ordenamento jurídico brasileiro.<br/>Para concluir, encaminho para discussão as seguintes questões:<br/>a) O princípio Constitucional da igualdade entre sexos poderá ser concretizado pela equiparação dos direitos previdenciários.<br/>b) Considerando o princípio da igualdade entre os casais deve ser garantida a proteção previdenciária do~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ cônjuge não ativo.<br/>c) O cônjuge não ativo que fica no lar, cuida dos filhos e da família (para o casal e para o Estado) deve ter direitos sobre o patrimônio previdenciário do cônjuge economicamente ativo.<br/>d) Devem ser introduzidos mecanismos legislativos que garantam a cobertura dos riscos previdenciários no âmbito doméstico, equiparação dos direitos previdenciários entre cônjuges.<br/>Bibliografia<br/> <br/>ANTONIUK, Elisete; UTINE, Marly Célia. A proteção de bem de família. Porto Alegre: Sérgio Antonio Sabris, 2003.<br/>BALERA, Wagner. Sistema de Seguridade Social. São Paulo: LTR, 2006.<br/>BALERA, Wagner. A Seguridade Social da Constituição de 1988. São Paulo: Revista dos Tribunais, 1999.<br/>BARROSO, Luis Roberto. Interpretação e Aplicação da Constituição. 6ª edição, São Paulo: Saraiva.<br/>BARROSO, Luis Roberto. A reconstrução democrática do Direito Público no Brasil (vários autores). Rio de Janeiro: Renovar, 2007.<br/>BOBBIO, Norberto. Teoria do ordenamento jurídico. Trad. Maria Celeste Cordeiro Leite dos Santos. 8. ed. Brasília: UNB, 1996.<br/>BRANCO, Paulo Gustavo Gonet. COELHO, Inocêncio Mártires. MENDES, Gilmar Ferreira. Curso de Direito Constitucional. 2 ed. São Paulo: Saraiva, 2007<br/>CAMPOS, Miriam de Abreu Machado e. Família no Direito Comparado – Divisão das Expectativas de Aposentadoria entre Cônjuges. Minas Gerais: Del Rey, 2003.<br/>CANOTILHO, José Joaquim Gomes. Direito Constitucional. ed.2.reimpr. Coimbra: Livraria Almedina, 1996.<br/>CASTRO, Carlos Roberto Siqueira. . O princípio da isonomia e a igualdade da mulher no Direito Constitucional. Rio de Janeiro: Forense, 1983.<br/>CASTRO, Carlos Roberto Siqueira. A Constituição aberta e os Direitos Fundamentais: ensaios sobre o constitucionalismo pós-moderno e comunitário. Rio de Janeiro: Forense, 2003.<br/>COELHO, Sacha Calmon Navarro. DERZI, Misabel Abreu Machado. THEODORO JR, Humberto. Direito Tributário Contemporâneo. 2. ed. rev. e ampliada. São Paulo: Revista dos Tribunais, 2004.<br/>COMPARATO, Fábio Konder. Ética: Direito, Moral e Religião do Mundo Moderno. São Paulo: Companhia de letras, 2006.<br/>DAVID, Rene. Os Grandes Sistemas de Direito Contemporâneo. São Paulo: Martins Fontes, 1986. Trad. Hermínio A. Carvalho.<br/>DERZI, Misabel Abreu Machado. Justiça Prospectiva na Previdência Social – Folha de São Paulo, 26 de fev.2003, p.A3.<br/>HABERELE, Petter. Hermeneutica Constitucional. Porto Alegre: Sérgio Antonio Sabris, 1997. Trad. Gilmar Ferreira Mendes.<br/>MARTINEZ, Wladimir Novaes. Temas atuais de Previdência Social. Homenagem a Celso Barroso Leite. São Paulo: LTR, 1998.<br/>MENDES, Gilmar Ferreira. Argüição de descumprimento de preceito fundamental – Comentários a Lei 9.882 de 06/12/1999. São Paulo: Saraiva, 2007.<br/>MONTEIRO, Meire Lúcia Gomes. Introdução ao~'));
    DBMS_LOB.APPEND(v_contents, TO_CLOB(q'~ Direito Previdenciário. Coordenação - vários autores. São Paulo: LTR, 1998.<br/>PINTO, Matheus Cromo S.A. Convenios y Acuerdos internacionales en materia de seguridad social subscrito por España con otros países e intrumentos jurídicos complementários. Instituto Nacional de La Seguridad Social. España (Madri), 1991.<br/>PIERDONÀ, Zélia Luiza. Contribuições para Seguridade Social. São Paulo: LTR, 2003.<br/>DERZI, Mizabel. Limitações Constitucionais ao Poder de Tributar. 7.ed. rev. e compl. Á luz da Constituição de 1988 por Mizabel Derzi. Rio de Janeiro: Forense, 1987.<br/>SENADO FEDERAL – PEC 93/2003.<br/>BONAVIDES, Paulo. “O Poder legislativo no Moderno Estado Social” e Reflexões: Política e direito. 2. ed. Rio de Janeiro: Forense, 1978.<br/>WARAT, Luis Alberto. Introdução Geral do Direito. Porto Alegre: Sérgio Antonio Sabris, 1994.<br/><br/><b>(*) Procuradora Federal, é presidente da Associação Nacional dos Procuradores Federais da Previdência Social (Anpprev)</b></p>~'));

    INSERT INTO WKSP_SINDICATTO.CONTENT (
        TENANT_CODE,
        CTYPE_CODE,
        SLUG,
        SORT_ORDER,
        STATUS,
        TITLE,
        CONTENTS,
        CONTENT_FORMAT,
        CREATED_AT,
        UPDATED_AT,
        PUBLISHED_AT,
        IMAGE_ALT
    ) VALUES (
        'anpprev',
        'artigos',
        q'~a-justica-prospectiva-na-seguridade-social~',
        100,
        'published',
        q'~A justiça prospectiva na seguridade social~',
        v_contents,
        'html',
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        TO_DATE('01/01/2000', 'DD/MM/YYYY'),
        q'~Artigo: A justiça prospectiva na seguridade social~'
    );

    DBMS_LOB.FREETEMPORARY(v_contents);
END;
/

COMMIT;

SELECT COUNT(*) AS total_artigos_anpprev
FROM WKSP_SINDICATTO.CONTENT
WHERE TENANT_CODE = 'anpprev'
  AND CTYPE_CODE = 'artigos';
