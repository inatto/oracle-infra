DROP TABLE role_etype;
CREATE TABLE role_etype (
    role_code  VARCHAR2(50) NOT NULL,
    etype_code VARCHAR2(20) NOT NULL,

    CONSTRAINT pk_role_etype PRIMARY KEY (role_code, etype_code)

    -- TODO 20250712 deve ter tabela de etype com typos globais nova e tenant_etype
    --     CONSTRAINT fk_role_etype_code FOREIGN KEY (etype_code) REFERENCES etype(code)
)
/

INSERT INTO role_etype (role_code, etype_code) VALUES ('partner', 'associate')
/

SELECT * FROM role_etype
/