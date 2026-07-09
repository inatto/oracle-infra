UPDATE content
   SET image_url = '/tenants/anpprev/images/notes/27-anos-de-anpprev-vera-sarmet.webp',
       image_filename = '27-anos-de-anpprev-vera-sarmet.webp',
       image_mime_type = 'image/webp',
       image_alt = '27 anos de ANPPREV - Vera Sarmet',
       image_updated_at = SYSTIMESTAMP,
       updated_at = SYSTIMESTAMP
 WHERE tenant_code = 'anpprev'
   AND ctype_code = 'note'
   AND slug = '27-anos-de-anpprev-vera-sarmet';

UPDATE content
   SET image_url = '/tenants/anpprev/images/notes/reforma-da-previdencia-contribuicao-de-aposentados-e-pensionistas-com-doenca-incapacitante.webp',
       image_filename = 'reforma-da-previdencia-contribuicao-de-aposentados-e-pensionistas-com-doenca-incapacitante.webp',
       image_mime_type = 'image/webp',
       image_alt = 'Reforma da Previdência - Contribuição de aposentados e pensionistas com doença incapacitante',
       image_updated_at = SYSTIMESTAMP,
       updated_at = SYSTIMESTAMP
 WHERE tenant_code = 'anpprev'
   AND ctype_code = 'note'
   AND slug = 'reforma-da-previdencia-contribuicao-de-aposentados-e-pensionistas-com-doenca-incapacitante';

UPDATE content
   SET image_url = '/tenants/anpprev/images/notes/reforma-da-previdencia-majoracao-das-aliquotas-ordinarias.webp',
       image_filename = 'reforma-da-previdencia-majoracao-das-aliquotas-ordinarias.webp',
       image_mime_type = 'image/webp',
       image_alt = 'Reforma da Previdência - Majoração das alíquotas ordinárias',
       image_updated_at = SYSTIMESTAMP,
       updated_at = SYSTIMESTAMP
 WHERE tenant_code = 'anpprev'
   AND ctype_code = 'note'
   AND slug = 'reforma-da-previdencia-majoracao-das-aliquotas-ordinarias';

COMMIT;



/*
UPDATE content
SET image_url = '/tenants/anpprev/images/latest-reports/agu-evitou-perda-de-r-1-9-trilhao-para-uniao-com-vitorias-e-acordos-judiciais.webp',
    image_filename = 'agu-evitou-perda-de-r-1-9-trilhao-para-uniao-com-vitorias-e-acordos-judiciais.webp',
    image_mime_type = 'image/webp',
    image_alt = 'AGU evitou perda de R$ 1,9 trilhão para União com vitórias e acordos judiciais',
    image_updated_at = systimestamp,
    updated_at = systimestamp
WHERE tenant_code = 'anpprev'
    AND ctype_code = 'news'
    AND subtype = 'latest-reports'
    AND slug = 'agu-evitou-perda-de-r-1-9-trilhao-para-uniao-com-vitorias-e-acordos-judiciais';

UPDATE content
SET image_url = '/tenants/anpprev/images/latest-reports/representantes-da-anpprev-sao-recebidos-pelo-presidente-do-tcu.webp',
    image_filename = 'representantes-da-anpprev-sao-recebidos-pelo-presidente-do-tcu.webp',
    image_mime_type = 'image/webp',
    image_alt = 'Representantes da ANPPREV são recebidos pelo presidente do TCU',
    image_updated_at = systimestamp,
    updated_at = systimestamp
WHERE tenant_code = 'anpprev'
    AND ctype_code = 'news'
    AND subtype = 'latest-reports'
    AND slug = 'representantes-da-anpprev-sao-recebidos-pelo-presidente-do-tcu';

COMMIT;
*/



/*

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-outubro-a-dezembro-19.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-outubro-a-dezembro-19.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 257 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-julho-a-setembro-19.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-julho-a-setembro-19.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 256 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-abril-a-junho-19.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-abril-a-junho-19.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 255 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-janeiro-a-julho-20.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-a-julho-20.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 254 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-julho-a-dezembro-20.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-julho-a-dezembro-20.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 253 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-janeiro-a-marco-2021.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-a-marco-2021.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 252 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-abril-a-agosto-2021.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-abril-a-agosto-2021.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 251 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-setembro-a-dezembro-2021.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-setembro-a-dezembro-2021.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 250 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-janeiro-a-marco-2022.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-a-marco-2022.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 249 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-abril-a-junho-2022.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-abril-a-junho-2022.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 248 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-julho-a-dezembro-2022.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-julho-a-dezembro-2022.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 247 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-janeiro-a-julho-2023.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-a-julho-2023.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 246 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-agosto-a-dezembro-2023.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-agosto-a-dezembro-2023.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 245 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-junho-2025.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-junho-2025.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 244 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

UPDATE content SET
  image_mime_type = 'image/webp',
  image_filename = 'jornal-anpprev-janeiro-2026.webp',
  image_url = '/tenants/anpprev/images/journals/jornal-anpprev-janeiro-2026.webp',
  image_alt = title,
  image_updated_at = SYSTIMESTAMP
WHERE id = 243 AND tenant_code = 'anpprev' AND ctype_code = 'journal';

COMMIT;




*/
/*
20260708-1941
UPDATE content SET title = 'Jornal ANPPREV - Outubro a Dezembro/2019' WHERE id = 257;
UPDATE content SET title = 'Jornal ANPPREV - Julho a Setembro/2019' WHERE id = 256;
UPDATE content SET title = 'Jornal ANPPREV - Abril a Junho/2019' WHERE id = 255;
UPDATE content SET title = 'Jornal ANPPREV - Janeiro a Julho/2020' WHERE id = 254;
UPDATE content SET title = 'Jornal ANPPREV - Julho a Dezembro/2020' WHERE id = 253;
UPDATE content SET title = 'Jornal ANPPREV - Janeiro a Março/2021' WHERE id = 252;
UPDATE content SET title = 'Jornal ANPPREV - Abril a Agosto/2021' WHERE id = 251;
UPDATE content SET title = 'Jornal ANPPREV - Setembro a Dezembro/2021' WHERE id = 250;
UPDATE content SET title = 'Jornal ANPPREV - Janeiro a Março/2022' WHERE id = 249;
UPDATE content SET title = 'Jornal ANPPREV - Abril a Junho/2022' WHERE id = 248;
UPDATE content SET title = 'Jornal ANPPREV - Julho a Dezembro/2022' WHERE id = 247;
UPDATE content SET title = 'Jornal ANPPREV - Janeiro a Julho/2023' WHERE id = 246;
UPDATE content SET title = 'Jornal ANPPREV - Agosto a Dezembro/2023' WHERE id = 245;
UPDATE content SET title = 'Jornal ANPPREV - Junho/2025' WHERE id = 244;
UPDATE content SET title = 'Jornal ANPPREV - Janeiro/2026' WHERE id = 243;
*//*

