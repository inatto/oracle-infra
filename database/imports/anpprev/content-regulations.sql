-- Normas institucionais ANPPREV
-- Regra: Normas usam CONTENT.CTYPE_CODE = 'regulation' e SUBTYPE nulo.
-- Arquivos/anexos locais de normas devem usar:
-- /tenants/anpprev/files/regulations/<arquivo>
-- Imagens locais de normas devem usar:
-- /tenants/anpprev/images/regulations/<arquivo>


DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM user_tab_cols
     WHERE table_name = 'CONTENT'
       AND column_name = 'SUBTYPE';

    IF v_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE content ADD subtype VARCHAR2(80)';
        EXECUTE IMMEDIATE q'[COMMENT ON COLUMN content.subtype IS ''Subtipo editorial opcional. Ex.: latest-reports e multimedia para recortes usando ctype_code=news.'']';
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX idx_content_tenant_ctype_slug';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -1418 AND SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

CREATE UNIQUE INDEX idx_content_tenant_ctype_slug
    ON content (
        CASE WHEN TRIM(slug) IS NOT NULL THEN LOWER(tenant_code) END,
        CASE WHEN TRIM(slug) IS NOT NULL THEN LOWER(ctype_code) END,
        CASE WHEN TRIM(slug) IS NOT NULL THEN LOWER(NVL(subtype, '-')) END,
        CASE WHEN TRIM(slug) IS NOT NULL THEN LOWER(TRIM(slug)) END
    )
/

CREATE OR REPLACE VIEW vw_content AS
SELECT c.id,
       c.tenant_code,
       c.ctype_code,
       c.subtype,
       c.contents,
       c.title,
       c.created_at,
       c.updated_at,
       c.published_at,
       c.image_blob,
       c.image_mime_type,
       c.image_filename,
       c.image_alt,
       c.image_url,
       c.image_updated_at,
       c.content_format,
       c.slug,
       c.sort_order,
       c.status,
       c.author_name,
       c.source_name,
       c.source_url,
       CASE
           WHEN c.ctype_code = 'news' AND c.subtype = 'latest-reports' THEN 'Informe'
           WHEN c.ctype_code = 'news' AND c.subtype = 'multimedia' THEN 'Fotos e Vídeos'
           WHEN c.ctype_code = 'news' THEN 'Notícia'
           ELSE ct.name
       END AS ctype_name
  FROM content c
  LEFT JOIN ctype ct
    ON ct.code = c.ctype_code
 WHERE 1 = 1
   AND (
       LOWER(c.tenant_code) = LOWER(v('G_TENANT_CODE'))
       OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip'
       OR is_sindicatto()
   )
 ORDER BY CASE WHEN c.ctype_code = 'news' THEN 0 ELSE 1 END,
          c.ctype_code,
          c.subtype,
          c.id DESC
/

DELETE FROM content
 WHERE tenant_code = 'anpprev'
   AND ctype_code = 'regulation'
   AND slug IN (
        q'~codigo-civil~',
        q'~codigo-de-etica-e-disciplina-da-oab~',
        q'~codigo-de-processo-civil~',
        q'~constituicao-federal-de-1988~',
        q'~decreto-1-171-1994~',
        q'~estatuto-da-advocacia-e-da-oab~',
        q'~estatuto-do-idoso~',
        q'~lei-10-480-2002~',
        q'~lei-8-112-1990~',
        q'~lei-complementar-73-1993~',
        q'~regimento-interno-da-camara-dos-deputados~',
        q'~regimento-interno-do-senado-federal~',
        q'~regimento-interno-do-superior-tribunal-de-justica~',
        q'~regimento-interno-do-supremo-tribunal-federal~'
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
    'regulation',
    NULL,
    q'~CÓDIGO CIVIL~',
    q'~codigo-civil~',
    q'~<p>Código Civil</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10789&amp;f=uploadshttps://www2.senado.leg.br/bdsf/bitstream/handle/id/70327/C%C3%B3digo%20Civil%202%20ed.pdf" target="_blank" rel="noopener noreferrer">Código Civil</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1167/codigo-civil~',
    q'~/tenants/anpprev/images/regulations/codigo-civil-43b872c8f2.png~',
    q'~CÓDIGO CIVIL~',
    10,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~CÓDIGO DE ÉTICA E DISCIPLINA DA OAB~',
    q'~codigo-de-etica-e-disciplina-da-oab~',
    q'~<p>Código De Ética E Disciplina Da Oab</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10788&amp;f=uploadshttps://www.oab.org.br/content/pdf/legislacaooab/codigodeetica.pdf" target="_blank" rel="noopener noreferrer">Código de Ética e Disciplina da OAB</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1166/codigo-de-etica-e-disciplina-da-oab~',
    q'~/tenants/anpprev/images/regulations/codigo-de-etica-e-disciplina-da-oab-477cca3e5a.png~',
    q'~CÓDIGO DE ÉTICA E DISCIPLINA DA OAB~',
    20,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~CÓDIGO DE PROCESSO CIVIL~',
    q'~codigo-de-processo-civil~',
    q'~<p>Código De Processo Civil</p>
<ul class="content-links regulation-links">
<li><a href="/tenants/anpprev/files/regulations/codigo-de-processo-civil-8dd4133c28.pdf" target="_blank" rel="noopener noreferrer">Código De Processo Civil</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1164/codigo-de-processo-civil~',
    q'~/tenants/anpprev/images/regulations/codigo-de-processo-civil-cb14e9eec7.png~',
    q'~CÓDIGO DE PROCESSO CIVIL~',
    30,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~CONSTITUIÇÃO FEDERAL DE 1988~',
    q'~constituicao-federal-de-1988~',
    q'~<p>Clique aqui!</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10752&amp;f=uploads/20191206094905_cf88_livro_ec91_2016.pdf" target="_blank" rel="noopener noreferrer">Clique aqui!</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1162/constituicao-federal-de-1988~',
    q'~/tenants/anpprev/images/regulations/constituicao-federal-de-1988-aab39ffbc6.png~',
    q'~CONSTITUIÇÃO FEDERAL DE 1988~',
    40,
    TO_DATE('2019-12-06', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-06', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~DECRETO 1.171/1994~',
    q'~decreto-1-171-1994~',
    q'~<p>Decreto 1.171/1994</p>
<ul class="content-links regulation-links">
<li><a href="http://www.planalto.gov.br/ccivil_03/decreto/d1171.htm" target="_blank" rel="noopener noreferrer">Decreto 1.171/1994</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1173/decreto-1-171-1994~',
    q'~/tenants/anpprev/images/regulations/decreto-1-171-1994-9725b8a2ac.png~',
    q'~DECRETO 1.171/1994~',
    50,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~ESTATUTO DA ADVOCACIA E DA OAB~',
    q'~estatuto-da-advocacia-e-da-oab~',
    q'~<p>Estatuto Da Advocacia E Da Oab</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10787&amp;f=uploadshttps://www.oab.org.br/content/pdf/legislacaooab/lei-8906-94-site.pdf" target="_blank" rel="noopener noreferrer">Estatuto da Advocacia e da OAB</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1165/estatuto-da-advocacia-e-da-oab~',
    q'~/tenants/anpprev/images/regulations/estatuto-da-advocacia-e-da-oab-d07e606098.png~',
    q'~ESTATUTO DA ADVOCACIA E DA OAB~',
    60,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~ESTATUTO DO IDOSO~',
    q'~estatuto-do-idoso~',
    q'~<p>Estatuto Do Idoso</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10753&amp;f=uploads/20191206104303_estatuto_do_idoso.pdf" target="_blank" rel="noopener noreferrer">Estatuto do Idoso</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1163/estatuto-do-idoso~',
    q'~/tenants/anpprev/images/regulations/estatuto-do-idoso-0095ed1ade.png~',
    q'~ESTATUTO DO IDOSO~',
    70,
    TO_DATE('2019-12-06', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-06', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~LEI 10.480/2002~',
    q'~lei-10-480-2002~',
    q'~<p>Lei 10.480/2002</p>
<ul class="content-links regulation-links">
<li><a href="http://www.planalto.gov.br/ccivil_03/LEIS/2002/L10480.htm" target="_blank" rel="noopener noreferrer">Lei 10.480/2002</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1169/lei-10-480-2002~',
    q'~/tenants/anpprev/images/regulations/lei-10-480-2002-d8c8a97f0c.png~',
    q'~LEI 10.480/2002~',
    80,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~LEI 8.112/1990~',
    q'~lei-8-112-1990~',
    q'~<p>Lei 8.112/1990</p>
<ul class="content-links regulation-links">
<li><a href="http://www.planalto.gov.br/ccivil_03/leis/l8112cons.htm" target="_blank" rel="noopener noreferrer">Lei 8.112/1990</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1172/lei-8-112-1990~',
    q'~/tenants/anpprev/images/regulations/lei-8-112-1990-8d41db5664.png~',
    q'~LEI 8.112/1990~',
    90,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~LEI COMPLEMENTAR 73/1993~',
    q'~lei-complementar-73-1993~',
    q'~<p>Lei Complementar 73/1993</p>
<ul class="content-links regulation-links">
<li><a href="http://www.planalto.gov.br/ccivil_03/LEIS/LCP/Lcp73.htm" target="_blank" rel="noopener noreferrer">Lei Complementar 73/1993</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1168/lei-complementar-73-1993~',
    q'~/tenants/anpprev/images/regulations/lei-complementar-73-1993-2c3bc6cb57.png~',
    q'~LEI COMPLEMENTAR 73/1993~',
    100,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~REGIMENTO INTERNO DA CÂMARA DOS DEPUTADOS~',
    q'~regimento-interno-da-camara-dos-deputados~',
    q'~<p>Regimento Interno Da Câmara Dos Deputados</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10792&amp;f=uploadshttps://www2.camara.leg.br/atividade-legislativa/legislacao/regimento-interno-da-camara-dos-deputados/arquivos-1/ricd%20atualizado%20ate%20rcd%20%2012-2019.pdf" target="_blank" rel="noopener noreferrer">Regimento Interno da Câmara dos Deputados</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1170/regimento-interno-da-camara-dos-deputados~',
    q'~/tenants/anpprev/images/regulations/regimento-interno-da-camara-dos-deputados-5ebdb59b62.png~',
    q'~REGIMENTO INTERNO DA CÂMARA DOS DEPUTADOS~',
    110,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~REGIMENTO INTERNO DO SENADO FEDERAL~',
    q'~regimento-interno-do-senado-federal~',
    q'~<p>Regimento Interno Do Senado Federal</p>
<ul class="content-links regulation-links">
<li><a href="https://www25.senado.leg.br/documents/12427/45868/RISF+2018+Volume+1.pdf/cd5769c8-46c5-4c8a-9af7-99be436b89c4" target="_blank" rel="noopener noreferrer">Regimento Interno do Senado Federal</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1171/regimento-interno-do-senado-federal~',
    q'~/tenants/anpprev/images/regulations/regimento-interno-do-senado-federal-6d0f107560.png~',
    q'~REGIMENTO INTERNO DO SENADO FEDERAL~',
    120,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~REGIMENTO INTERNO DO SUPERIOR TRIBUNAL DE JUSTIÇA~',
    q'~regimento-interno-do-superior-tribunal-de-justica~',
    q'~<p>Regimento Interno Do Superior Tribunal De Justiça</p>
<ul class="content-links regulation-links">
<li><a href="https://ww2.stj.jus.br/publicacaoinstitucional/index.php/Regimento/article/view/3115/3839" target="_blank" rel="noopener noreferrer">Regimento Interno do Superior Tribunal de Justiça</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1175/regimento-interno-do-superior-tribunal-de-justica~',
    q'~/tenants/anpprev/images/regulations/regimento-interno-do-superior-tribunal-de-justica-466cdedc37.png~',
    q'~REGIMENTO INTERNO DO SUPERIOR TRIBUNAL DE JUSTIÇA~',
    130,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
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
    'regulation',
    NULL,
    q'~REGIMENTO INTERNO DO SUPREMO TRIBUNAL FEDERAL~',
    q'~regimento-interno-do-supremo-tribunal-federal~',
    q'~<p>Regimento Interno Do Supremo Tribunal Federal</p>
<ul class="content-links regulation-links">
<li><a href="https://anpprev.org.br/download.php?idm=10796&amp;f=uploadshttp://www.stf.jus.br/arquivo/cms/legislacaoRegimentoInterno/anexo/RISTF.pdf" target="_blank" rel="noopener noreferrer">Regimento Interno do Supremo Tribunal Federal</a></li>
</ul>~',
    'html',
    'published',
    NULL,
    q'[Editorial]',
    q'~https://anpprev.org.br/conteudo/1174/regimento-interno-do-supremo-tribunal-federal~',
    q'~/tenants/anpprev/images/regulations/regimento-interno-do-supremo-tribunal-federal-3805cde007.png~',
    q'~REGIMENTO INTERNO DO SUPREMO TRIBUNAL FEDERAL~',
    140,
    TO_DATE('2019-12-23', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2019-12-23', 'YYYY-MM-DD')
)
/

COMMIT
/
