-- País (ISO 3166-1)
-- ignorar checagem
DROP TABLE country CASCADE CONSTRAINTS;
CREATE TABLE country (
    code VARCHAR2(2) PRIMARY KEY, -- ex: 'BR'
    name VARCHAR2(100) NOT NULL
);
INSERT INTO country (code, name) VALUES ('BR', 'Brasil');
SELECT * FROM country;

-- Subdivisão (UF, estado, província)
DROP TABLE country_uf;
CREATE TABLE country_uf (
    country_code VARCHAR2(2)   NOT NULL, -- ex: 'BR'
    code         VARCHAR2(10)  NOT NULL, -- ex: 'SP', 'NY', 'QC'
    name         VARCHAR2(100) NOT NULL,

    CONSTRAINT pk_country_uf PRIMARY KEY (country_code, code),
    CONSTRAINT fk_uf_country FOREIGN KEY (country_code) REFERENCES country (code)
);

--
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'AC', 'Acre');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'AL', 'Alagoas');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'AP', 'Amapá');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'AM', 'Amazonas');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'BA', 'Bahia');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'CE', 'Ceará');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'DF', 'Distrito Federal');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'ES', 'Espírito Santo');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'GO', 'Goiás');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'MA', 'Maranhão');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'MT', 'Mato Grosso');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'MS', 'Mato Grosso do Sul');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'MG', 'Minas Gerais');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'PA', 'Pará');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'PB', 'Paraíba');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'PR', 'Paraná');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'PE', 'Pernambuco');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'PI', 'Piauí');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'RJ', 'Rio de Janeiro');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'RN', 'Rio Grande do Norte');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'RS', 'Rio Grande do Sul');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'RO', 'Rondônia');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'RR', 'Roraima');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'SC', 'Santa Catarina');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'SP', 'São Paulo');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'SE', 'Sergipe');
INSERT INTO country_uf (country_code, code, name) VALUES ('BR', 'TO', 'Tocantins');
SELECT * FROM country_uf;
SELECT name, code FROM country_uf;

-- Município
DROP TABLE municipality;
CREATE TABLE municipality (
    id               NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country_code     VARCHAR2(2)   NOT NULL, -- ex: 'BR'
    subdivision_code VARCHAR2(10)  NOT NULL, -- ex: 'SP'
    name             VARCHAR2(100) NOT NULL,
    br_ibge_code     VARCHAR2(10),

    CONSTRAINT fk_municipality_uf FOREIGN KEY (country_code, subdivision_code) REFERENCES country_uf (country_code, code)
);
