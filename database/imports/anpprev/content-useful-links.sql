-- Links Úteis institucionais ANPPREV
-- Regra: Links Úteis usam CONTENT.CTYPE_CODE = 'useful_link' e SUBTYPE nulo.
-- São links externos capturados da listagem antiga.




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
    'useful_link',
    NULL,
    q'~Advocacia Geral da União - AGU~',
    q'~advocacia-geral-da-uniao-agu~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Advocacia Geral da União - AGU</strong>.</p><a class="useful-link-button" href="http://www.agu.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.agu.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.agu.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    10,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~ASAClub~',
    q'~asaclub~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>ASAClub</strong>.</p><a class="useful-link-button" href="http://www.asaclub.org.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.asaclub.org.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.asaclub.org.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    20,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Banner - Atualize~',
    q'~banner-atualize~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Banner - Atualize</strong>.</p><a class="useful-link-button" href="https://www.youtube.com" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>https://www.youtube.com</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~https://www.youtube.com~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    30,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Câmara dos Deputados~',
    q'~camara-dos-deputados~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Câmara dos Deputados</strong>.</p><a class="useful-link-button" href="http://www.camara.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.camara.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.camara.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    40,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Conselho Federal da OAB~',
    q'~conselho-federal-da-oab~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Conselho Federal da OAB</strong>.</p><a class="useful-link-button" href="http://www.oab.org.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.oab.org.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.oab.org.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    50,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Conselho Nacional de Justiça~',
    q'~conselho-nacional-de-justica~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Conselho Nacional de Justiça</strong>.</p><a class="useful-link-button" href="http://www.cnj.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.cnj.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.cnj.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    60,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Departamento Intersindical de Assessoria Parlamentar - DIAP~',
    q'~departamento-intersindical-de-assessoria-parlamentar-diap~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Departamento Intersindical de Assessoria Parlamentar - DIAP</strong>.</p><a class="useful-link-button" href="http://www.diap.org.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.diap.org.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.diap.org.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    70,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Escola da AGU~',
    q'~escola-da-agu~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Escola da AGU</strong>.</p><a class="useful-link-button" href="http://www.agu.gov.br/unidade/ESCOLA" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.agu.gov.br/unidade/ESCOLA</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.agu.gov.br/unidade/ESCOLA~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    80,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Fórum Nacional da Advocacia Pública~',
    q'~forum-nacional-da-advocacia-publica~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Fórum Nacional da Advocacia Pública</strong>.</p><a class="useful-link-button" href="http://www.advocaciapublica.com.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.advocaciapublica.com.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.advocaciapublica.com.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    90,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~GEAP~',
    q'~geap~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>GEAP</strong>.</p><a class="useful-link-button" href="http://www.geap.com.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.geap.com.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.geap.com.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    100,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~JUSTIÇA FEDERAL~',
    q'~justica-federal~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>JUSTIÇA FEDERAL</strong>.</p><a class="useful-link-button" href="http://www.jf.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.jf.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.jf.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    110,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Ministério da Previdência Social~',
    q'~ministerio-da-previdencia-social~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Ministério da Previdência Social</strong>.</p><a class="useful-link-button" href="http://www.previdencia.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.previdencia.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.previdencia.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    120,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Ministério do Planejamento, Orçamento e Gestão~',
    q'~ministerio-do-planejamento-orcamento-e-gestao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Ministério do Planejamento, Orçamento e Gestão</strong>.</p><a class="useful-link-button" href="http://www.planejamento.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.planejamento.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.planejamento.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    130,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~OAB DF~',
    q'~oab-df~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>OAB DF</strong>.</p><a class="useful-link-button" href="http://www.oabdf.org.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.oabdf.org.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.oabdf.org.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    140,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~PFE/INSS~',
    q'~pfe-inss~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>PFE/INSS</strong>.</p><a class="useful-link-button" href="http://www.agu.gov.br/unidade/PFEINSS" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.agu.gov.br/unidade/PFEINSS</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.agu.gov.br/unidade/PFEINSS~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    150,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Procuradoria Geral da Fazenda Nacional~',
    q'~procuradoria-geral-da-fazenda-nacional~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Procuradoria Geral da Fazenda Nacional</strong>.</p><a class="useful-link-button" href="http://www.pgfn.fazenda.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.pgfn.fazenda.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.pgfn.fazenda.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    160,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Procuradoria-Geral Federal~',
    q'~procuradoria-geral-federal~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Procuradoria-Geral Federal</strong>.</p><a class="useful-link-button" href="http://www.agu.gov.br/unidade/PGF" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.agu.gov.br/unidade/PGF</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.agu.gov.br/unidade/PGF~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    170,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Senado Federal~',
    q'~senado-federal~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Senado Federal</strong>.</p><a class="useful-link-button" href="http://www.senado.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.senado.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.senado.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    180,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~SERPRO~',
    q'~serpro~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>SERPRO</strong>.</p><a class="useful-link-button" href="https://www.serpro.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>https://www.serpro.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~https://www.serpro.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    190,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Supremo Tribunal de Justiça~',
    q'~supremo-tribunal-de-justica~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Supremo Tribunal de Justiça</strong>.</p><a class="useful-link-button" href="http://www.stj.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.stj.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.stj.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    200,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Supremo Tribunal Federal~',
    q'~supremo-tribunal-federal~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Supremo Tribunal Federal</strong>.</p><a class="useful-link-button" href="http://www.stf.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.stf.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.stf.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    210,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Regional Federal 1ª Região~',
    q'~tribunal-regional-federal-1a-regiao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Regional Federal 1ª Região</strong>.</p><a class="useful-link-button" href="http://www.trf1.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.trf1.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.trf1.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    220,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Regional Federal 2ª Região~',
    q'~tribunal-regional-federal-2a-regiao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Regional Federal 2ª Região</strong>.</p><a class="useful-link-button" href="http://www.trf2.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.trf2.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.trf2.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    230,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Regional Federal 3ª Região~',
    q'~tribunal-regional-federal-3a-regiao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Regional Federal 3ª Região</strong>.</p><a class="useful-link-button" href="http://www.trf3.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.trf3.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.trf3.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    240,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Regional Federal 4ª Região~',
    q'~tribunal-regional-federal-4a-regiao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Regional Federal 4ª Região</strong>.</p><a class="useful-link-button" href="http://www.trf4.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.trf4.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.trf4.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    250,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Regional Federal 5ª Região~',
    q'~tribunal-regional-federal-5a-regiao~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Regional Federal 5ª Região</strong>.</p><a class="useful-link-button" href="http://www.trf5.jus.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.trf5.jus.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.trf5.jus.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    260,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
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
    'useful_link',
    NULL,
    q'~Tribunal Superior do Trabalho~',
    q'~tribunal-superior-do-trabalho~',
    q'~<div class="useful-link-panel"><p>Acesso externo de referência para <strong>Tribunal Superior do Trabalho</strong>.</p><a class="useful-link-button" href="http://www.tst.gov.br" target="_blank" rel="noopener noreferrer"><span class="useful-link-button__icon">↗</span><span>Acessar site</span></a><p><small>http://www.tst.gov.br</small></p></div>~',
    'html',
    'published',
    NULL,
    q'[Link externo]',
    q'~http://www.tst.gov.br~',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    270,
    TO_DATE('2026-07-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-08', 'YYYY-MM-DD')
)
/


COMMIT
/
