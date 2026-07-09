ALTER TABLE CONTENT ADD (
  BLOCK_CODE VARCHAR2(100)
);

COMMENT ON COLUMN CONTENT.BLOCK_CODE IS
  'Código do bloco/função visual do conteúdo dentro de uma página, ex: hero, infobox, section, cta, gallery, video, faq.';