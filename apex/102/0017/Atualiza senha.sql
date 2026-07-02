BEGIN

    IF :P17_MEMBER_ID_HIDDEN IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Membro não informado.');
    END IF;

    IF :P17_NEW_PASSWORD IS NULL THEN
        RAISE_APPLICATION_ERROR(-20005, 'Informe a nova senha.');
    END IF;

    IF :P17_PASSWORD_CONFIRM IS NULL THEN
        RAISE_APPLICATION_ERROR(-20006, 'Confirme a nova senha.');
    END IF;

    IF :P17_NEW_PASSWORD <> :P17_PASSWORD_CONFIRM THEN
        RAISE_APPLICATION_ERROR(-20001, 'Senha e confirmação não conferem.');
    END IF;

    IF LENGTH(:P17_NEW_PASSWORD) < 4 THEN
        RAISE_APPLICATION_ERROR(-20002, 'A senha deve ter no mínimo 4 caracteres.');
    ELSIF NOT REGEXP_LIKE(:P17_NEW_PASSWORD, '[A-Za-z]') THEN
        RAISE_APPLICATION_ERROR(-20003, 'A senha deve conter pelo menos uma letra.');
    ELSIF NOT REGEXP_LIKE(:P17_NEW_PASSWORD, '[0-9]') THEN
        RAISE_APPLICATION_ERROR(-20004, 'A senha deve conter pelo menos um número.');
    END IF;

    --
    UPDATE entity e
    SET e.md5_password = LOWER(standard_hash(:P17_NEW_PASSWORD, 'MD5'))
    WHERE e.id = (SELECT m.entity_id
    FROM member m
    WHERE m.id = :P17_MEMBER_ID_HIDDEN);

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'Nenhuma pessoa/entity encontrada para esse membro.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE BETWEEN -20999 AND -20000 THEN
            RAISE;
        ELSE
            RAISE_APPLICATION_ERROR(-20008, 'Erro ao atualizar senha: ' || SQLERRM);
        END IF;
END;