-- Últimos Informes / Latest Reports
-- Regra: não criar CTYPE novo. Últimos Informes é CONTENT.CTYPE_CODE = 'news'
-- com CONTENT.SUBTYPE = 'latest-reports'.

set define off;

DECLARE
    v_count NUMBER;
    v_old_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM user_tab_cols
     WHERE table_name = 'CONTENT'
       AND column_name = 'SUBTYPE';

    IF v_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE content ADD subtype VARCHAR2(80)';
        EXECUTE IMMEDIATE q'[COMMENT ON COLUMN content.subtype IS 'Subtipo editorial opcional. Ex.: latest-reports para Últimos Informes usando ctype_code=news.']';
    END IF;

    -- Segurança para quem chegou a rodar uma versão anterior com CONTENT_SUBTYPE.
    SELECT COUNT(*)
      INTO v_old_count
      FROM user_tab_cols
     WHERE table_name = 'CONTENT'
       AND column_name = 'CONTENT_SUBTYPE';

    IF v_old_count > 0 THEN
        EXECUTE IMMEDIATE 'UPDATE content SET subtype = content_subtype WHERE subtype IS NULL AND content_subtype IS NOT NULL';
    END IF;
END;
/

-- Atualiza a unicidade de slug para permitir recortes por subtipo dentro do mesmo CTYPE.
-- Ex.: news normal e news/latest-reports podem ter rotas editoriais diferentes.
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

-- Dados ANPPREV importados de Últimos Informes.
-- Arquivos/anexos locais deste subtipo devem usar:
-- /tenants/anpprev/files/latest-reports/<arquivo>

INSERT INTO content (
    tenant_code,
    ctype_code,
    subtype,
    title,
    slug,
    contents,
    content_format,
    status,
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
    'news',
    'latest-reports',
    q'[AGU evitou perda de R$ 1,9 trilhão para União com vitórias e acordos judiciais]',
    'agu-evitou-perda-de-r-1-9-trilhao-para-uniao-com-vitorias-e-acordos-judiciais',
    q'[<p>Resultado reúne atuação institucional no Judiciário nos últimos dois anos. Vitórias nos tribunais superiores foram decisivas para o desempenho positivo.</p>]',
    'html',
    'published',
    q'[Assessoria Especial de Comunicação Social da AGU.]',
    'https://anpprev.org.br/conteudo/56/agu-evitou-perda-de-r-1-9-trilhao-para-uniao-com-vitorias-e-acordos-judiciais',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    10,
    TO_DATE('2025-03-18', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2025-03-18', 'YYYY-MM-DD')
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
    'news',
    'latest-reports',
    q'[Representantes da ANPPREV são recebidos pelo presidente do TCU]',
    'representantes-da-anpprev-sao-recebidos-pelo-presidente-do-tcu',
    q'[<p>A Associação Nacional dos Procuradores e Advogados Públicos Federais (ANPPREV) foi recebida, nesta quinta-feira (13), pelo presidente do Tribunal de Contas da União (TCU...</p>]',
    'html',
    'published',
    q'[Assessoria de Comunicação da ANPPREV.]',
    'https://anpprev.org.br/conteudo/55/representantes-da-anpprev-sao-recebidos-pelo-presidente-do-tcu',
    '/tenants/anpprev/images/core/anpprev_symbol.png',
    q'[Símbolo ANPPREV]',
    20,
    TO_DATE('2025-03-18', 'YYYY-MM-DD'),
    SYSDATE,
    TO_DATE('2025-03-18', 'YYYY-MM-DD')
)
/

COMMIT
/
