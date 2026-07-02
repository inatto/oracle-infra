DROP TABLE tenant_permission CASCADE CONSTRAINTS;

CREATE TABLE tenant_permission (
    id          NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tenant_code VARCHAR2(50) NOT NULL,
    page_alias  VARCHAR2(100) NOT NULL
);

--
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('asaclub', 'tickets');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('asaclub', 'email-campaigns');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('asaclub', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('asaclub', 'cancelar-voucher');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('asaclub', 'partner-members');
--
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ADEPDF', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ADPF', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('AJUFER', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('AMATRA', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('AMPCON', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ANADEF', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ANAJUR', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ANAUNI', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ANPM', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ANPR', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('APDF', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ASABNB', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ASCGU', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('ASLEGIS', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('AUDITAR', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('FORVM', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('INFRAMERICA', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('SINPROFAZ', 'members');

--
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('anpprev', 'tickets');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('anpprev', 'email-campaigns');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('anpprev', 'members');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('anpprev', 'processos');
--
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('inatto', 'tickets');
INSERT INTO tenant_permission (tenant_code, page_alias) VALUES ('inatto', 'members');

SELECT * FROM tenant_permission;
