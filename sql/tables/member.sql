-- DROP TABLE member;
CREATE TABLE
    member
(
    id                    NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    --
    id_membro_old         INTEGER UNIQUE,
    id_pessoa_old         INTEGER,
    id_pessoa_empresa_old INTEGER,
    --
    tenant_code           VARCHAR2(50)        NOT NULL,
    tenant_id             INTEGER,
    etype_code            VARCHAR2(20)        NOT NULL,
    entity_id             INTEGER,
    --
    is_dev                NUMBER(1),
    active                NUMBER(1) DEFAULT 1 NOT NULL,
    updated_at            NUMBER(1) DEFAULT 1 NOT NULL,
    must_update           NUMBER(1) DEFAULT 1 NOT NULL,

    -- TODO 20250702
    --     CONSTRAINT uk_member_tenant_etype_cpf UNIQUE (tenant_code, etype_code, entity_br_cpf),
    --     CONSTRAINT uk_member_tenant_etype_email UNIQUE (tenant_code, etype_code, entity_email),

    --
    CONSTRAINT fk_member_entity FOREIGN KEY (entity_id) REFERENCES entity(id),
    CONSTRAINT fk_member_tenant FOREIGN KEY (tenant_id) REFERENCES tenant(id),
    CONSTRAINT fk_member_etype FOREIGN KEY (etype_code) REFERENCES etype(code)
);

SELECT * FROM member ORDER BY id DESC;

ALTER TABLE member ADD is_dev NUMBER(1) DEFAULT 0 NOT NULL;