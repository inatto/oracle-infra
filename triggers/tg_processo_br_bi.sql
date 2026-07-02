CREATE
    OR REPLACE TRIGGER tg_processo_br_bi
    BEFORE INSERT
    ON processo_br
    FOR EACH ROW
DECLARE
BEGIN

    --
    :new.cpf := only_numbers(:new.cpf);
    :new.cpf_pensionista := only_numbers(:new.cpf_pensionista);
    :new.situacao_funcional := UPPER(:new.situacao_funcional);
    :new.nome := UPPER(:new.nome);
    :new.nome_pensionista := UPPER(:new.nome_pensionista);
    :new.autor_acao := UPPER(:new.autor_acao);
    :new.escritorio_responsavel := UPPER(:new.escritorio_responsavel);
    :new.parte_contraria := UPPER(:new.parte_contraria);
    :new.vara_cumprimento := UPPER(:new.vara_cumprimento);
    :new.vara_processo := UPPER(:new.vara_processo);

EXCEPTION
    WHEN no_data_found THEN
        NULL; -- tudo certo, cpf ainda não existe
END;
/

-- TODO 20250724
UPDATE processo_br
SET cpf                      = only_numbers(cpf)
    , cpf_pensionista        = only_numbers(cpf_pensionista)
    , situacao_funcional     = UPPER(situacao_funcional)
    , nome                   = UPPER(nome)
    , nome_pensionista       = UPPER(nome_pensionista)
    , autor_acao             = UPPER(autor_acao)
    , escritorio_responsavel = UPPER(escritorio_responsavel)
    , parte_contraria        = UPPER(parte_contraria)
    , vara_cumprimento       = UPPER(vara_cumprimento)
    , vara_processo          = UPPER(vara_processo)
    , tenant_code            = 'ANPPREV'
WHERE 1 = 1
/