
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
    'sinproprev',
    'sobre',
    'hero',
    10,
    'published',
    'Representação, defesa e valorização da categoria',
    q'[
<p>
O Sindicato Nacional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central é uma entidade sindical que representa a categoria profissional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central, ativos e inativos, na Administração Pública Federal Direta, Indireta e órgãos vinculados, com abrangência na base territorial nacional, constituído por tempo indeterminado para fins de estudos, coordenação, orientação, proteção, representação e defesa legal da categoria citada, tendo como princípio fundamental e primado de autonomia, liberdade sindical e da solidariedade profissional.
</p>
]',
    'html',
    SYSDATE,
    SYSDATE,
    SYSDATE,
    'Sobre o SINPROPREV'
);

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
    'sinproprev',
    'sobre',
    'atuacao',
    20,
    'published',
    'Atuação',
    q'[
<p>
Trabalhamos na defesa dos direitos da categoria, acompanhando pautas institucionais,
demandas coletivas e necessidades dos filiados.
</p>
]',
    'html',
    SYSDATE,
    SYSDATE,
    SYSDATE,
    'Atuação'
);

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
    'sinproprev',
    'sobre',
    'compromisso',
    30,
    'published',
    'Compromisso',
    q'[
<p>
Nosso compromisso é atuar com responsabilidade, transparência e proximidade,
fortalecendo a participação dos trabalhadores.
</p>
]',
    'html',
    SYSDATE,
    SYSDATE,
    SYSDATE,
    'Compromisso'
);

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
    'sinproprev',
    'sobre',
    'filiacao',
    40,
    'published',
    'Filiação',
    q'[
<p>
A participação dos filiados fortalece o sindicato e amplia a capacidade de representação
nas negociações e ações em defesa da categoria.
</p>
]',
    'html',
    SYSDATE,
    SYSDATE,
    SYSDATE,
    'Filiação'
);

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
    'sinproprev',
    'sobre',
    'contato',
    50,
    'published',
    'Contato',
    q'[
<p>
Fale com o sindicato pelos canais oficiais:
</p>

<div class="contato-lista">
  <p>
    <strong>Telefone:</strong><br/>
    (61) 3322-0170
  </p>

  <p>
    <strong>E-mail:</strong><br/>
    <a href="mailto:sinproprev@sinproprev.org.br">sinproprev@sinproprev.org.br</a>
  </p>
</div>
]',
    'html',
    SYSDATE,
    SYSDATE,
    SYSDATE,
    'Contato'
);

COMMIT;