-- Padronização de todas as colunas de data/hora para Oracle DATE
-- DATE no Oracle armazena: ano, mês, dia, hora, minuto e segundo.
-- Perdas esperadas: frações de segundo e informação de fuso horário.
-- Execute primeiro em homologação e com backup.


-- Índices que usam SYS_EXTRACT_UTC deixam de fazer sentido após virar DATE.
 DROP INDEX uk_smtp2go_event;
 DROP INDEX ix_voting_tenant_period;

ALTER TABLE email_campaign_recipient MODIFY (sent_at DATE);
ALTER TABLE email_campaign_recipient MODIFY (opened_at DATE);
ALTER TABLE email_campaign MODIFY (send_date DATE);
ALTER TABLE email_campaign MODIFY (created_at DATE);
ALTER TABLE email_campaign MODIFY (updated_at DATE);
ALTER TABLE tenant MODIFY (created_at DATE);
ALTER TABLE tenant MODIFY (updated_at DATE);
ALTER TABLE entity MODIFY (created_at DATE);
ALTER TABLE entity MODIFY (updated_at DATE);
ALTER TABLE dbtools$execution_history MODIFY (created_on DATE);
ALTER TABLE dbtools$execution_history MODIFY (updated_on DATE);
ALTER TABLE smtp2go MODIFY (event_date DATE);
ALTER TABLE smtp2go MODIFY (submitted DATE);
ALTER TABLE content MODIFY (image_updated_at DATE);
ALTER TABLE content MODIFY (video_updated_at DATE);
ALTER TABLE email_blacklist MODIFY (created_at DATE);
ALTER TABLE email_send_log MODIFY (created_at DATE);
ALTER TABLE "--PERMISSION" MODIFY (created_at DATE);
ALTER TABLE etype_permission MODIFY (created_at DATE);
ALTER TABLE voting MODIFY (created_at DATE);
ALTER TABLE voting MODIFY (updated_at DATE);
ALTER TABLE voting MODIFY (starts_at DATE);
ALTER TABLE voting MODIFY (ends_at DATE);
ALTER TABLE voting MODIFY (results_at DATE);
ALTER TABLE voting_question MODIFY (created_at DATE);
ALTER TABLE voting_question MODIFY (updated_at DATE);
ALTER TABLE voting_option MODIFY (created_at DATE);
ALTER TABLE voting_option MODIFY (updated_at DATE);
ALTER TABLE content_attachment MODIFY (created_at DATE);
ALTER TABLE content_attachment MODIFY (updated_at DATE);
ALTER TABLE voting_detail MODIFY (created_at DATE);
ALTER TABLE voting_detail MODIFY (updated_at DATE);
ALTER TABLE voting_ballot MODIFY (started_at DATE);
ALTER TABLE voting_ballot MODIFY (updated_at DATE);
ALTER TABLE voting_ballot MODIFY (confirmed_at DATE);
ALTER TABLE voting_answer MODIFY (answered_at DATE);

-- Padroniza defaults para DATE.
ALTER TABLE email_campaign MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE tenant MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE email_blacklist MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE email_send_log MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE "--PERMISSION" MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE etype_permission MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE voting MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE voting_question MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE voting_option MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE content_attachment MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE content_attachment MODIFY (updated_at DEFAULT SYSDATE);
ALTER TABLE voting_detail MODIFY (created_at DEFAULT SYSDATE);
ALTER TABLE voting_ballot MODIFY (started_at DEFAULT SYSDATE);
ALTER TABLE voting_ballot MODIFY (updated_at DEFAULT SYSDATE);
ALTER TABLE voting_answer MODIFY (answered_at DEFAULT SYSDATE);

-- Recria os índices usando diretamente as colunas DATE.
CREATE UNIQUE INDEX uk_smtp2go_event
    ON smtp2go(email_id, event_date, event_type, recipient);

CREATE INDEX ix_voting_tenant_period
    ON voting(tenant_code, is_active, starts_at, ends_at);

-- Conferência: deve retornar zero linhas.
SELECT table_name, column_name, data_type
FROM user_tab_columns
WHERE data_type LIKE 'TIMESTAMP%'
ORDER BY table_name, column_id;

COMMIT;
