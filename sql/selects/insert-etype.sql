INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'agreement_consultant', 2, 'consultor-de-convenios', 'Consultor de Convênios', 'Consultores de Convênios', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 2);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'press', 5, 'imprensa', 'Imprensa', 'Imprensa', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 5);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'communication_director', 6, 'diretor_comunicacao', 'Diretor de Comunicação', 'Diretores de Comunicação', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 6);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'agreement_director', 7, 'diretor_convenio', 'Diretor de Convênios', 'Diretores de Convênios', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 7);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'secretary', 8, 'secretario', 'Secretário', 'Secretários', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 8);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'general_director', 10, 'diretor_geral', 'Diretor geral', 'Diretores gerais', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 10);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'agreements_and_associates', 11, 'convenios_e_associados', 'Convênios + Associados', 'Convênios + Associados', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 11);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'management', 12, 'gerencia', 'Gerência', 'Gerências', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 12);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'agreement_entity_manager', 16, 'gerente-de-convenios-e-entidades', 'Gerente de Convênios e Entidades', 'Gerentes de Convênios e Entidades', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 16);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'administrative_manager', 19, 'gerente-administrativo', 'Gerente Administrativo', 'Gerentes Administrativos', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 19);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'service_provider', 21, 'prestador-servicos', 'Prestador de serviços', 'Prestadores de serviços', NULL, 1, 0, 1
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 21);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'asacar_partner', 22, 'parceiro-asacar', 'Parceiro ASAcar', 'Parceiros ASAcar', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 22);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'legal_intern', 23, 'estagiario-juridico', 'Estagiário jurídico', 'Estagiários jurídicos', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 23);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'contact', 24, 'contato', 'Contato', 'Contatos', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 24);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'contact_member', 25, 'contato', 'Contato', 'Contatos', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 25);

INSERT INTO etype
    (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'marketing_agency', 26, 'agencia-de-marketing', 'Agência de Marketing', 'Agências de Marketing', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 26);

INSERT INTO etype
    (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'visitor', 27, 'visitante', 'Visitante', 'Visitantes', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 27);

INSERT INTO etype
    (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'candidate_entity', 28, 'entidade-candidata', 'Entidade Candidata', 'Entidades Candidatas', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 28);

INSERT INTO etype
    (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'mixed_management', 29, 'gerencial-misto', 'Gerencial Misto', 'Gerenciais Mistos', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 29);

INSERT INTO etype (tenant_code, code, id_perfil_old, tag_perfil_old, name, plural_name, description, read_only, is_admin, active)
SELECT 'ASACLUB', 'programmer', 31, 'programador', 'Programador', 'Programadores', NULL, 1, 0, 0
FROM dual
WHERE NOT exists (SELECT 1 FROM etype WHERE tenant_code = 'ASACLUB' AND id_perfil_old = 31);

COMMIT;


