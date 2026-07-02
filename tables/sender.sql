DROP TABLE sender
/

CREATE TABLE sender (
    email                      VARCHAR2(255),
    groups                     VARCHAR2(500),
    phone                      VARCHAR2(50),
    email_status               VARCHAR2(50),
    sms_status                 VARCHAR2(50),
    transactional_email_status VARCHAR2(50),
    transactional_sms_status   VARCHAR2(50),
    location                   VARCHAR2(255),
    created                    DATE,
    last_name                  VARCHAR2(255),
    first_name                 VARCHAR2(255),
    idade                      NUMBER,
    senha                      VARCHAR2(255),
    entidade                   VARCHAR2(255),
    unidade_federação__uf_     VARCHAR2(2),
    id_membro                  NUMBER,
    data_nascimento            DATE,
    id_pessoa                  NUMBER,
    cpf                        VARCHAR2(14)
)
/


SELECT * FROM sender
/
