-- Inserts/MERGE para Journals ANPPREV
-- Arquivos externos devem estar em:
--   public/tenants/anpprev/files/journals/*.pdf
--   public/tenants/anpprev/images/journals/*.png
-- CTYPE_CODE canônico usado no site: journal


MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-janeiro-2026' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JANEIRO/2026',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 13/02/2026</strong></p>
  <p>JORNAL ANPPREV - JANEIRO/2026</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-2026-ab1ca02869.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2026-02-13',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-2026-bdf8b3005a.png',
  c.IMAGE_FILENAME = 'jornal-anpprev-janeiro-2026-bdf8b3005a.png',
  c.IMAGE_ALT = 'JORNAL ANPPREV - JANEIRO/2026',
  c.SORT_ORDER = 10,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-janeiro-2026', 'JORNAL ANPPREV - JANEIRO/2026', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 13/02/2026</strong></p>
  <p>JORNAL ANPPREV - JANEIRO/2026</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-2026-ab1ca02869.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2026-02-13', SYSDATE, DATE '2026-02-13',
  '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-2026-bdf8b3005a.png', 'jornal-anpprev-janeiro-2026-bdf8b3005a.png', 'JORNAL ANPPREV - JANEIRO/2026', 'html', 10, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-junho-2025' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JUNHO/2025',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 31/07/2025</strong></p>
  <p>JORNAL ANPPREV - JUNHO/2025</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-junho-2025-30fc67d850.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2025-07-31',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = '/tenants/anpprev/images/journals/jornal-anpprev-junho-2025-b6ca38d1d6.png',
  c.IMAGE_FILENAME = 'jornal-anpprev-junho-2025-b6ca38d1d6.png',
  c.IMAGE_ALT = 'JORNAL ANPPREV - JUNHO/2025',
  c.SORT_ORDER = 20,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-junho-2025', 'JORNAL ANPPREV - JUNHO/2025', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 31/07/2025</strong></p>
  <p>JORNAL ANPPREV - JUNHO/2025</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-junho-2025-30fc67d850.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2025-07-31', SYSDATE, DATE '2025-07-31',
  '/tenants/anpprev/images/journals/jornal-anpprev-junho-2025-b6ca38d1d6.png', 'jornal-anpprev-junho-2025-b6ca38d1d6.png', 'JORNAL ANPPREV - JUNHO/2025', 'html', 20, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-agosto-a-dezembro-2023' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 09/02/2024</strong></p>
  <p>JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-agosto-a-dezembro-2023-4d7e715081.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2024-02-09',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023',
  c.SORT_ORDER = 30,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-agosto-a-dezembro-2023', 'JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 09/02/2024</strong></p>
  <p>JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-agosto-a-dezembro-2023-4d7e715081.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2024-02-09', SYSDATE, DATE '2024-02-09',
  NULL, NULL, 'JORNAL ANPPREV - AGOSTO A DEZEMBRO 2023', 'html', 30, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-janeiro-a-julho-2023' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JANEIRO A JULHO 2023',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 01/09/2023</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A JULHO 2023</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-julho-2023-e5cca85988.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2023-09-01',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JANEIRO A JULHO 2023',
  c.SORT_ORDER = 40,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-janeiro-a-julho-2023', 'JORNAL ANPPREV - JANEIRO A JULHO 2023', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 01/09/2023</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A JULHO 2023</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-julho-2023-e5cca85988.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2023-09-01', SYSDATE, DATE '2023-09-01',
  NULL, NULL, 'JORNAL ANPPREV - JANEIRO A JULHO 2023', 'html', 40, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-julho-a-dezembro-2022' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JULHO A DEZEMBRO 2022',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 10/01/2023</strong></p>
  <p>JORNAL ANPPREV - JULHO A DEZEMBRO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-dezembro-2022-88c08f6e7c.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2023-01-10',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JULHO A DEZEMBRO 2022',
  c.SORT_ORDER = 50,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-julho-a-dezembro-2022', 'JORNAL ANPPREV - JULHO A DEZEMBRO 2022', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 10/01/2023</strong></p>
  <p>JORNAL ANPPREV - JULHO A DEZEMBRO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-dezembro-2022-88c08f6e7c.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2023-01-10', SYSDATE, DATE '2023-01-10',
  NULL, NULL, 'JORNAL ANPPREV - JULHO A DEZEMBRO 2022', 'html', 50, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-abril-a-junho-2022' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - ABRIL A JUNHO 2022',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 03/08/2022</strong></p>
  <p>JORNAL ANPPREV - ABRIL A JUNHO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-junho-2022-fb4fb36a2d.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2022-08-03',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - ABRIL A JUNHO 2022',
  c.SORT_ORDER = 60,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-abril-a-junho-2022', 'JORNAL ANPPREV - ABRIL A JUNHO 2022', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 03/08/2022</strong></p>
  <p>JORNAL ANPPREV - ABRIL A JUNHO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-junho-2022-fb4fb36a2d.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2022-08-03', SYSDATE, DATE '2022-08-03',
  NULL, NULL, 'JORNAL ANPPREV - ABRIL A JUNHO 2022', 'html', 60, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-janeiro-a-marco-2022' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JANEIRO A MARÇO 2022',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 06/06/2022</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A MARÇO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-marco-2022-b9f5fa1f60.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2022-06-06',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JANEIRO A MARÇO 2022',
  c.SORT_ORDER = 70,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-janeiro-a-marco-2022', 'JORNAL ANPPREV - JANEIRO A MARÇO 2022', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 06/06/2022</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A MARÇO 2022</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-marco-2022-b9f5fa1f60.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2022-06-06', SYSDATE, DATE '2022-06-06',
  NULL, NULL, 'JORNAL ANPPREV - JANEIRO A MARÇO 2022', 'html', 70, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-setembro-a-dezembro-2021' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 30/01/2022</strong></p>
  <p>JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-setembro-a-dezembro-2021-7c29ede333.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2022-01-30',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021',
  c.SORT_ORDER = 80,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-setembro-a-dezembro-2021', 'JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 30/01/2022</strong></p>
  <p>JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-setembro-a-dezembro-2021-7c29ede333.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2022-01-30', SYSDATE, DATE '2022-01-30',
  NULL, NULL, 'JORNAL ANPPREV - SETEMBRO A DEZEMBRO 2021', 'html', 80, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-abril-a-agosto-2021' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - ABRIL A AGOSTO 2021',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/11/2021</strong></p>
  <p>JORNAL ANPPREV - ABRIL A AGOSTO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-agosto-2021-5b5754a34c.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2021-11-23',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - ABRIL A AGOSTO 2021',
  c.SORT_ORDER = 90,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-abril-a-agosto-2021', 'JORNAL ANPPREV - ABRIL A AGOSTO 2021', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/11/2021</strong></p>
  <p>JORNAL ANPPREV - ABRIL A AGOSTO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-agosto-2021-5b5754a34c.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2021-11-23', SYSDATE, DATE '2021-11-23',
  NULL, NULL, 'JORNAL ANPPREV - ABRIL A AGOSTO 2021', 'html', 90, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-janeiro-a-marco-2021' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JANEIRO A MARÇO 2021',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 30/04/2021</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A MARÇO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-marco-2021-b8855da599.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2021-04-30',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JANEIRO A MARÇO 2021',
  c.SORT_ORDER = 100,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-janeiro-a-marco-2021', 'JORNAL ANPPREV - JANEIRO A MARÇO 2021', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 30/04/2021</strong></p>
  <p>JORNAL ANPPREV - JANEIRO A MARÇO 2021</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-marco-2021-b8855da599.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2021-04-30', SYSDATE, DATE '2021-04-30',
  NULL, NULL, 'JORNAL ANPPREV - JANEIRO A MARÇO 2021', 'html', 100, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-julho-a-dezembro-20' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JULHO a DEZEMBRO/20',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 04/01/2021</strong></p>
  <p>JORNAL ANPPREV - JULHO a DEZEMBRO/20</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-dezembro-20-acc3dfee53.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2021-01-04',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JULHO a DEZEMBRO/20',
  c.SORT_ORDER = 110,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-julho-a-dezembro-20', 'JORNAL ANPPREV - JULHO a DEZEMBRO/20', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 04/01/2021</strong></p>
  <p>JORNAL ANPPREV - JULHO a DEZEMBRO/20</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-dezembro-20-acc3dfee53.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2021-01-04', SYSDATE, DATE '2021-01-04',
  NULL, NULL, 'JORNAL ANPPREV - JULHO a DEZEMBRO/20', 'html', 110, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-janeiro-a-julho-20' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JANEIRO a JULHO/20',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 04/09/2020</strong></p>
  <p>JORNAL ANPPREV - JANEIRO a JULHO/20</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-julho-20-cec3be1d47.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2020-09-04',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JANEIRO a JULHO/20',
  c.SORT_ORDER = 120,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-janeiro-a-julho-20', 'JORNAL ANPPREV - JANEIRO a JULHO/20', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 04/09/2020</strong></p>
  <p>JORNAL ANPPREV - JANEIRO a JULHO/20</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-janeiro-a-julho-20-cec3be1d47.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2020-09-04', SYSDATE, DATE '2020-09-04',
  NULL, NULL, 'JORNAL ANPPREV - JANEIRO a JULHO/20', 'html', 120, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-abril-a-junho-19' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - ABRIL a JUNHO/19',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - ABRIL a JUNHO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-junho-19-deed985b20.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2019-12-23',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - ABRIL a JUNHO/19',
  c.SORT_ORDER = 130,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-abril-a-junho-19', 'JORNAL ANPPREV - ABRIL a JUNHO/19', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - ABRIL a JUNHO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-abril-a-junho-19-deed985b20.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2019-12-23', SYSDATE, DATE '2019-12-23',
  NULL, NULL, 'JORNAL ANPPREV - ABRIL a JUNHO/19', 'html', 130, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-julho-a-setembro-19' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - JULHO a SETEMBRO/19',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - JULHO a SETEMBRO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-setembro-19-991324bda9.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2019-12-23',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - JULHO a SETEMBRO/19',
  c.SORT_ORDER = 140,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-julho-a-setembro-19', 'JORNAL ANPPREV - JULHO a SETEMBRO/19', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - JULHO a SETEMBRO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-julho-a-setembro-19-991324bda9.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2019-12-23', SYSDATE, DATE '2019-12-23',
  NULL, NULL, 'JORNAL ANPPREV - JULHO a SETEMBRO/19', 'html', 140, 'published'
);
/

MERGE INTO WKSP_SINDICATTO.CONTENT c
USING (SELECT 'anpprev' AS tenant_code, 'journal' AS ctype_code, 'jornal-anpprev-outubro-a-dezembro-19' AS slug FROM dual) s
ON (LOWER(c.TENANT_CODE) = LOWER(s.tenant_code) AND LOWER(c.CTYPE_CODE) = LOWER(s.ctype_code) AND LOWER(TRIM(c.SLUG)) = LOWER(TRIM(s.slug)))
WHEN MATCHED THEN UPDATE SET
  c.TITLE = 'JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19',
  c.CONTENTS = TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-outubro-a-dezembro-19-b6d18f83af.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'),
  c.PUBLISHED_AT = DATE '2019-12-23',
  c.UPDATED_AT = SYSDATE,
  c.CONTENT_FORMAT = 'html',
  c.IMAGE_URL = NULL,
  c.IMAGE_FILENAME = NULL,
  c.IMAGE_ALT = 'JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19',
  c.SORT_ORDER = 150,
  c.STATUS = 'published'
WHEN NOT MATCHED THEN INSERT (
  TENANT_CODE, CTYPE_CODE, SLUG, TITLE, CONTENTS, CREATED_AT, UPDATED_AT, PUBLISHED_AT,
  IMAGE_URL, IMAGE_FILENAME, IMAGE_ALT, CONTENT_FORMAT, SORT_ORDER, STATUS
) VALUES (
  'anpprev', 'journal', 'jornal-anpprev-outubro-a-dezembro-19', 'JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19', TO_CLOB(q'~<section class="content-journal">
  <p><strong>JORNAL - 23/12/2019</strong></p>
  <p>JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19</p>
  <p><a href="/tenants/anpprev/files/journals/jornal-anpprev-outubro-a-dezembro-19-b6d18f83af.pdf" target="_blank" rel="noopener">Baixar edição em PDF</a></p>
</section>~'), DATE '2019-12-23', SYSDATE, DATE '2019-12-23',
  NULL, NULL, 'JORNAL ANPPREV - OUTUBRO a DEZEMBRO/19', 'html', 150, 'published'
);
/

COMMIT;