SELECT COUNT(*)
FROM voting v
WHERE LOWER(v.tenant_code) = LOWER(:tenant_code)

    AND (
    :search IS NULL
            OR TRANSLATE(LOWER(v.title), 'áàâãäéèêëíìîïóòôõöúùûüçñýÿ', 'aaaaaeeeeiiiiooooouuuucnyy') LIKE :search
            OR TRANSLATE(LOWER(NVL(v.description, '')), 'áàâãäéèêëíìîïóòôõöúùûüçñýÿ', 'aaaaaeeeeiiiiooooouuuucnyy') LIKE :search
            OR TRANSLATE(LOWER(CASE WHEN NVL(v.is_active, 0) = 0 THEN 'inativa' WHEN v.starts_at IS NOT NULL AND v.starts_at > SYSDATE THEN 'agendada' WHEN v.ends_at IS NOT NULL AND v.ends_at < SYSDATE THEN 'encerrada' ELSE 'aberta' END), 'áàâãäéèêëíìîïóòôõöúùûüçñýÿ', 'aaaaaeeeeiiiiooooouuuucnyy') LIKE :search
    )