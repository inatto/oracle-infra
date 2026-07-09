-- Fotos e Vídeos / Multimedia
-- Regra: não criar CTYPE novo. Fotos e Vídeos é CONTENT.CTYPE_CODE = 'news'
-- com CONTENT.SUBTYPE = 'multimedia'.

set define off;

DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM user_tab_cols WHERE table_name = 'CONTENT' AND column_name = 'SUBTYPE';
    IF v_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE content ADD subtype VARCHAR2(80)';
        EXECUTE IMMEDIATE q'[COMMENT ON COLUMN content.subtype IS 'Subtipo editorial opcional. Ex.: latest-reports para Últimos Informes e multimedia para Fotos e Vídeos usando ctype_code=news.']';
    END IF;
END;
/


-- Atualiza a unicidade de slug para permitir recortes por subtipo dentro do mesmo CTYPE.
BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX idx_content_tenant_ctype_slug';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -1418 THEN
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

-- A view pública precisa expor SUBTYPE para o site filtrar news/multimedia sem misturar com notícias gerais.
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

-- Dados ANPPREV importados de Fotos e Vídeos.
-- Imagens locais em: /tenants/anpprev/images/multimedia/<arquivo>

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Arraiá da ANPPREV 2022]',
    q'[arraia-da-anpprev-2022]',
    q'[<p>Confira abaixo as fotos do Arraiá da ANPPREV realizado no dia 30 de junho na sede da entidade, em Brasília.</p><div class="content-gallery"><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-80e911c0c7.png" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-54ec63e63e.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-b77502764a.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-964d53e196.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-95b71958aa.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-2b050e2668.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-fb8aa3cace.jpg" alt="Arraiá da ANPPREV 2022" loading="lazy" /></figure></div>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/conteudo/27/arraia-da-anpprev-2022]',
    q'[/tenants/anpprev/images/multimedia/arraia-da-anpprev-2022-80e911c0c7.png]',
    q'[Arraiá da ANPPREV 2022]',
    10,
    TO_DATE('2022-05-04', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2022-05-04', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Fotos da Confraternização - 2021]',
    q'[fotos-da-confraternizacao-2021]',
    q'[<p>Confira aqui fotos da festa de confraternização realizada em 8 de dezembro na sede da ANPPREV, em Brasília.</p><div class="content-gallery"><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-a4117cf9bf.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-cd0ad1f583.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-dae13e5dfb.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-089dc95d2f.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-216404fdd7.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-c0f9f28021.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-f12c16abd7.jpg" alt="Fotos da Confraternização - 2021" loading="lazy" /></figure></div><ul class="content-links"><li><a href="https://drive.google.com/drive/folders/1Su3fup5y63uPNeaMitSaDSTRw6HKFqsK" target="_blank" rel="noopener noreferrer">Abrir galeria no Google Drive</a></li></ul>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/conteudo/94/fotos-da-confraternizacao-2021]',
    q'[/tenants/anpprev/images/multimedia/fotos-da-confraternizacao-2021-a4117cf9bf.jpg]',
    q'[Fotos da Confraternização - 2021]',
    20,
    TO_DATE('2021-12-08', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2021-12-08', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22]',
    q'[fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22]',
    q'[<div class="content-gallery"><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22-ed0952f29d.jpg" alt="Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22-e47ed87f2d.jpg" alt="Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22-cd5b0e8264.jpg" alt="Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22" loading="lazy" /></figure><figure class="content-gallery__item"><img src="/tenants/anpprev/images/multimedia/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22-650d52c752.jpg" alt="Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22" loading="lazy" /></figure></div>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/conteudo/93/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22]',
    q'[/tenants/anpprev/images/multimedia/fotos-da-visita-do-ministro-da-agu-a-anpprev-em-8-2-22-ed0952f29d.jpg]',
    q'[Fotos da visita do Ministro da AGU à ANPPREV em 8/2/22]',
    30,
    TO_DATE('2022-05-04', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2022-05-04', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV entrevista o Dep. Waldemar Oliveira (Avante/PE) | Honorários e Lei Orgânica da AGU]',
    q'[anpprev-entrevista-o-dep-waldemar-oliveira-avante-pe-honorarios-e-lei-organica-da-agu-nww5qu8-7x4]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/NWW5Qu8-7x4" title="ANPPREV entrevista o Dep. Waldemar Oliveira (Avante/PE) | Honorários e Lei Orgânica da AGU" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=NWW5Qu8-7x4&amp;t=1s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-entrevista-o-dep-waldemar-oliveira-avante-pe-honorarios-e-lei-organica-da-agu-NWW5Qu8-7x4]',
    q'[/tenants/anpprev/images/multimedia/anpprev-entrevista-o-dep-waldemar-oliveira-avante-pe-honorarios-e-lei-organica-da-agu-nww5qu8-7x4-6618adc216.jpg]',
    q'[ANPPREV entrevista o Dep. Waldemar Oliveira (Avante/PE) | Honorários e Lei Orgânica da AGU]',
    40,
    TO_DATE('2026-04-02', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-04-02', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV entrevista o diretor de Finanças e Patrimônio, Dr. Aluizo Silva de Lucena]',
    q'[anpprev-entrevista-o-diretor-de-financas-e-patrimonio-dr-aluizo-silva-de-lucena-veksh4vb6mo]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/vEkSh4VB6Mo" title="ANPPREV entrevista o diretor de Finanças e Patrimônio, Dr. Aluizo Silva de Lucena" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=vEkSh4VB6Mo&amp;t=128s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-entrevista-o-diretor-de-financas-e-patrimonio-dr-aluizo-silva-de-lucena-vEkSh4VB6Mo]',
    q'[/tenants/anpprev/images/multimedia/anpprev-entrevista-o-diretor-de-financas-e-patrimonio-dr-aluizo-silva-de-lucena-veksh4vb6mo-4022fc5b73.jpg]',
    q'[ANPPREV entrevista o diretor de Finanças e Patrimônio, Dr. Aluizo Silva de Lucena]',
    50,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Previdência Social: ANPPREV Entrevista a Procuradora Regional Dra. Zélia Luiza Pierdoná]',
    q'[previdencia-social-anpprev-entrevista-a-procuradora-regional-dra-zelia-luiza-pierdona-hseaxrrolrs]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/HseAXrRolrs" title="Previdência Social: ANPPREV Entrevista a Procuradora Regional Dra. Zélia Luiza Pierdoná" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=HseAXrRolrs&amp;t=25s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-previdencia-social-anpprev-entrevista-a-procuradora-regional-dra-zelia-luiza-pierdona-HseAXrRolrs]',
    q'[/tenants/anpprev/images/multimedia/previdencia-social-anpprev-entrevista-a-procuradora-regional-dra-zelia-luiza-pierdona-hseaxrrolrs-06256612cd.jpg]',
    q'[Previdência Social: ANPPREV Entrevista a Procuradora Regional Dra. Zélia Luiza Pierdoná]',
    60,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Depoimentos ANPPREV 2024]',
    q'[depoimentos-anpprev-2024-6bnjw9knomg]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/6bnjW9KnOMg" title="Depoimentos ANPPREV 2024" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=6bnjW9KnOMg" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-depoimentos-anpprev-2024-6bnjW9KnOMg]',
    q'[/tenants/anpprev/images/multimedia/depoimentos-anpprev-2024-6bnjw9knomg-7dfe3b5a6f.jpg]',
    q'[Depoimentos ANPPREV 2024]',
    70,
    TO_DATE('2024-08-27', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2024-08-27', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[INSTITUCIONAL ANPPREV - 2025]',
    q'[institucional-anpprev-2025-6fmjsvdbsia]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/6FmJsvdbsIA" title="INSTITUCIONAL ANPPREV - 2025" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=6FmJsvdbsIA" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-institucional-anpprev-2025-6FmJsvdbsIA]',
    q'[/tenants/anpprev/images/multimedia/institucional-anpprev-2025-6fmjsvdbsia-e3b5889d61.jpg]',
    q'[INSTITUCIONAL ANPPREV - 2025]',
    80,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Prevenção e Redução de Demandas Previdenciárias]',
    q'[prevencao-e-reducao-de-demandas-previdenciarias-7-r-fv2kb1i]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/7_r_fV2kB1I" title="Prevenção e Redução de Demandas Previdenciárias" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=7_r_fV2kB1I" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-prevencao-e-reducao-de-demandas-previdenciarias-7_r_fV2kB1I]',
    q'[/tenants/anpprev/images/multimedia/prevencao-e-reducao-de-demandas-previdenciarias-7-r-fv2kb1i-831022d2f9.jpg]',
    q'[Prevenção e Redução de Demandas Previdenciárias]',
    90,
    TO_DATE('2024-05-20', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2024-05-20', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Abertura do Congresso ANPPREV & ANAJUR - 2025]',
    q'[abertura-do-congresso-anpprev-anajur-2025-rsx97u5zegs]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/RsX97U5zEgs" title="Abertura do Congresso ANPPREV &amp; ANAJUR - 2025" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=RsX97U5zEgs&amp;t=186s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-abertura-do-congresso-anpprev-anajur-2025-RsX97U5zEgs]',
    q'[/tenants/anpprev/images/multimedia/abertura-do-congresso-anpprev-anajur-2025-rsx97u5zegs-24453706d9.jpg]',
    q'[Abertura do Congresso ANPPREV & ANAJUR - 2025]',
    100,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV entrevista deputado Lafayette Andrada (REPUBLICANOS-MG)]',
    q'[anpprev-entrevista-deputado-lafayette-andrada-republicanos-mg-x1zzaxbxgta]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/X1zZAXbXgTA" title="ANPPREV entrevista deputado Lafayette Andrada (REPUBLICANOS-MG)" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=X1zZAXbXgTA&amp;t=354s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-entrevista-deputado-lafayette-andrada-republicanos-mg-X1zZAXbXgTA]',
    q'[/tenants/anpprev/images/multimedia/anpprev-entrevista-deputado-lafayette-andrada-republicanos-mg-x1zzaxbxgta-36963248a6.jpg]',
    q'[ANPPREV entrevista deputado Lafayette Andrada (REPUBLICANOS-MG)]',
    110,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Institucional 2024 - A ANPPREV estará com você]',
    q'[institucional-2024-a-anpprev-estara-com-voce-yoivsuvxj0s]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/YoiVsUvXj0s" title="Institucional 2024 - A ANPPREV estará com você" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=YoiVsUvXj0s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-institucional-2024-a-anpprev-estara-com-voce-YoiVsUvXj0s]',
    q'[/tenants/anpprev/images/multimedia/institucional-2024-a-anpprev-estara-com-voce-yoivsuvxj0s-5bbbd7204e.jpg]',
    q'[Institucional 2024 - A ANPPREV estará com você]',
    120,
    TO_DATE('2024-08-27', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2024-08-27', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV INSTITUCIONAL 2024]',
    q'[anpprev-institucional-2024-2oubogek50g]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/2OUboGeK50g" title="ANPPREV INSTITUCIONAL 2024" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=2OUboGeK50g" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-institucional-2024-2OUboGeK50g]',
    q'[/tenants/anpprev/images/multimedia/anpprev-institucional-2024-2oubogek50g-2f0d7cbb13.jpg]',
    q'[ANPPREV INSTITUCIONAL 2024]',
    130,
    TO_DATE('2024-08-27', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2024-08-27', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV entrevista o deputado federal Cleber Verde (MDB-MA)]',
    q'[anpprev-entrevista-o-deputado-federal-cleber-verde-mdb-ma-x2jpxf1k43i]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/X2jPXF1k43I" title="ANPPREV entrevista o deputado federal Cleber Verde (MDB-MA)" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=X2jPXF1k43I&amp;t=187s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-entrevista-o-deputado-federal-cleber-verde-mdb-ma-X2jPXF1k43I]',
    q'[/tenants/anpprev/images/multimedia/anpprev-entrevista-o-deputado-federal-cleber-verde-mdb-ma-x2jpxf1k43i-fe2e00343a.jpg]',
    q'[ANPPREV entrevista o deputado federal Cleber Verde (MDB-MA)]',
    140,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[PGF 23 anos: ANPPREV Entrevista, com o procurador José Weber Holanda Alves, o primeiro PGF]',
    q'[pgf-23-anos-anpprev-entrevista-com-o-procurador-jose-weber-holanda-alves-o-primeiro-pgf-advcc9jsyck]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/ADvcC9jSyck" title="PGF 23 anos: ANPPREV Entrevista, com o procurador José Weber Holanda Alves, o primeiro PGF" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=ADvcC9jSyck&amp;t=33s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-pgf-23-anos-anpprev-entrevista-com-o-procurador-jose-weber-holanda-alves-o-primeiro-pgf-ADvcC9jSyck]',
    q'[/tenants/anpprev/images/multimedia/pgf-23-anos-anpprev-entrevista-com-o-procurador-jose-weber-holanda-alves-o-primeiro-pgf-advcc9jsyck-9c2437f9c2.jpg]',
    q'[PGF 23 anos: ANPPREV Entrevista, com o procurador José Weber Holanda Alves, o primeiro PGF]',
    150,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Entrevista com o Senador Nelsinho Trad: Valorização da Advocacia Pública e PEC 10]',
    q'[entrevista-com-o-senador-nelsinho-trad-valorizacao-da-advocacia-publica-e-pec-10-5arh0q-josq]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/5aRh0q-JoSQ" title="Entrevista com o Senador Nelsinho Trad: Valorização da Advocacia Pública e PEC 10" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://youtu.be/5aRh0q-JoSQ?si=TZRuxU005K3RRzaB" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-entrevista-com-o-senador-nelsinho-trad-valorizacao-da-advocacia-publica-e-pec-10-5aRh0q-JoSQ]',
    q'[/tenants/anpprev/images/multimedia/entrevista-com-o-senador-nelsinho-trad-valorizacao-da-advocacia-publica-e-pec-10-5arh0q-josq-c475b72307.jpg]',
    q'[Entrevista com o Senador Nelsinho Trad: Valorização da Advocacia Pública e PEC 10]',
    160,
    TO_DATE('2026-07-06', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-07-06', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[ANPPREV Entrevista, com o procurador Fábio Lucas, editor-chefe da RASS, a revista do CEJUD–ANPPREV]',
    q'[anpprev-entrevista-com-o-procurador-fabio-lucas-editor-chefe-da-rass-a-revista-do-cejud-anpprev-qshibd-oneq]',
    q'[<div class="content-video-embed"><iframe src="https://www.youtube.com/embed/QshIBd-OneQ" title="ANPPREV Entrevista, com o procurador Fábio Lucas, editor-chefe da RASS, a revista do CEJUD–ANPPREV" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><p><a href="https://www.youtube.com/watch?v=QshIBd-OneQ&amp;t=2s" target="_blank" rel="noopener noreferrer">Abrir vídeo original</a></p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/categoria/multimidia#crawler-popup-video-anpprev-entrevista-com-o-procurador-fabio-lucas-editor-chefe-da-rass-a-revista-do-cejud-anpprev-QshIBd-OneQ]',
    q'[/tenants/anpprev/images/multimedia/anpprev-entrevista-com-o-procurador-fabio-lucas-editor-chefe-da-rass-a-revista-do-cejud-anpprev-qshibd-oneq-a1ff259b32.jpg]',
    q'[ANPPREV Entrevista, com o procurador Fábio Lucas, editor-chefe da RASS, a revista do CEJUD–ANPPREV]',
    170,
    TO_DATE('2026-02-25', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2026-02-25', 'YYYY-MM-DD')
)
/

INSERT INTO content (
    tenant_code, ctype_code, subtype, title, slug, contents, content_format, status,
    source_name, source_url, image_url, image_alt, sort_order, created_at, updated_at, published_at
) VALUES (
    'anpprev',
    'news',
    'multimedia',
    q'[Solenidade de Posse 2022]',
    q'[solenidade-de-posse-2022]',
    q'[<p>Confira as fotos da solenidade de posse dos Conselhos Executivo e Fiscal da ANPPREV (gestão 2022-2025) realizada no dia 4 de maio, no Clube do Exército, em Brasília.</p>]',
    'html',
    'published',
    q'[ANPPREV TV / Multimídia]',
    q'[https://anpprev.org.br/conteudo/92/solenidade-de-posse-2022]',
    q'[/tenants/anpprev/images/multimedia/solenidade-de-posse-2022-779c9e034d.jpg]',
    q'[Solenidade de Posse 2022]',
    180,
    TO_DATE('2022-05-04', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2022-05-04', 'YYYY-MM-DD')
)
/

COMMIT
/