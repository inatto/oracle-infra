DROP TABLE third_dia_dia;

CREATE TABLE third_dia_dia (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo_grupo NUMBER,
    origem VARCHAR2(100),
    cpf VARCHAR2(11) NOT NULL,
    id_desconhecido NUMBER,
    nome VARCHAR2(100),
    status_geral CHAR(1),
    data_geral DATE,
    status_biometria VARCHAR2(20),
    status_associacao VARCHAR2(100),
    CONSTRAINT uk_cpf UNIQUE (cpf)
);

-- Trigger para limpar o CPF automaticamente
CREATE OR REPLACE TRIGGER trg_limpar_cpf
BEFORE INSERT OR UPDATE ON third_dia_dia
FOR EACH ROW
BEGIN
    :NEW.cpf := REGEXP_REPLACE(:NEW.cpf, '[^0-9]', '');
END;
/