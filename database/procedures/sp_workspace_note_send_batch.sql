CREATE or replace PROCEDURE sp_workspace_note_send_batch
(
    p_job_id      IN  NUMBER,
    p_batch_size  IN  NUMBER,
    p_processed   OUT NUMBER,
    p_success     OUT NUMBER,
    p_errors      OUT NUMBER,
    p_remaining   OUT NUMBER
)
AS
l_batch_size NUMBER := LEAST(GREATEST(NVL(p_batch_size, 100), 1), 500);
BEGIN
    p_processed := 0;
    p_success := 0;
    p_errors := 0;
    p_remaining := 0;

    UPDATE workspace_note_send_recipient r
    SET r.status = 'PROCESSING',
        r.try_count = r.try_count + 1
    WHERE r.id IN (
        SELECT id
        FROM (
            SELECT id
            FROM workspace_note_send_recipient
            WHERE workspace_note_send_job_id = p_job_id
                AND status = 'PENDING'
            ORDER BY id
        )
        WHERE ROWNUM <= l_batch_size
    )
        AND r.status = 'PENDING';

    p_processed := SQL%ROWCOUNT;

    MERGE INTO workspace_note target
    USING (
        SELECT
            j.tenant_code,
            r.recipient_entity_id AS owner_entity_id,
            'job-' || TO_CHAR(j.id) || '-recipient-' || TO_CHAR(r.recipient_entity_id) AS client_id,
            j.note_text,
            j.position_x,
            j.position_y,
            j.z_index,
            j.color,
            j.expanded,
            j.sent_by_entity_id,
            j.sent_by_name,
            j.sent_by_etype_code,
            j.sent_by_profile_name
        FROM workspace_note_send_recipient r
        JOIN workspace_note_send_job j
          ON j.id = r.workspace_note_send_job_id
        WHERE r.workspace_note_send_job_id = p_job_id
          AND r.status = 'PROCESSING'
    ) source
    ON (target.client_id = source.client_id)
    WHEN NOT MATCHED THEN
    INSERT
        (
            tenant_code, owner_entity_id, entity_id, client_id, note_text,
            position_x, position_y, z_index, docked, color, expanded,
            scope_type, scope_key, status,
            sent_by_entity_id, sent_by_name, sent_by_etype_code, sent_by_profile_name
        )
        VALUES
    (
        source.tenant_code, source.owner_entity_id, NULL, source.client_id, source.note_text,
        source.position_x, source.position_y, source.z_index, 0, source.color, source.expanded,
        'global', NULL, 'ACTIVE',
        source.sent_by_entity_id, source.sent_by_name,
        source.sent_by_etype_code, source.sent_by_profile_name
    );

    UPDATE workspace_note_send_recipient r
    SET r.status = 'COMPLETED',
        r.created_note_client_id =
            'job-' || TO_CHAR(p_job_id) || '-recipient-' || TO_CHAR(r.recipient_entity_id),
        r.processed_at = CURRENT_TIMESTAMP,
        r.error_message = NULL
    WHERE r.workspace_note_send_job_id = p_job_id
        AND r.status = 'PROCESSING';

    p_success := SQL%ROWCOUNT;

    UPDATE workspace_note_send_job
    SET processed_items = processed_items + p_processed,
        success_items = success_items + p_success,
        error_items = error_items + p_errors,
        updated_at = CURRENT_TIMESTAMP
    WHERE id = p_job_id;

    SELECT COUNT(*)
    INTO p_remaining
    FROM workspace_note_send_recipient
    WHERE workspace_note_send_job_id = p_job_id
        AND status IN ('PENDING', 'PROCESSING');

    IF p_remaining = 0 THEN
        UPDATE workspace_note_send_job
        SET status = CASE WHEN error_items + p_errors > 0
                              THEN 'COMPLETED_WITH_ERRORS'
                          ELSE 'COMPLETED' END,
            finished_at = CURRENT_TIMESTAMP,
            updated_at = CURRENT_TIMESTAMP
        WHERE id = p_job_id;
    END IF;
END;