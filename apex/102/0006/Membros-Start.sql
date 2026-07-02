BEGIN

    -- se passou tipo de membro, recupera o nome plural e o code
    IF :P6ETH IS NOT NULL THEN
        SELECT plural_name, code
        INTO :P6_ETYPE_NAME, :P6_ETYPE_CODE
        FROM vw_etype
        WHERE hash = :P6ETH;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Invalid etype [87652543].');
    END IF;

    -- permissoes
    IF (:P6_ETYPE_CODE = 'admin') AND NOT is_permitted('members', 'admin', :G_MEMBER_ID, 'is', 'admin') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735460].');
    ELSIF (:P6_ETYPE_CODE = 'agreement_analyst') AND NOT is_permitted('members', 'agreement_analyst', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735461].');
    ELSIF (:P6_ETYPE_CODE = 'associate') AND NOT is_permitted('members', 'associate', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735462].');
    ELSIF (:P6_ETYPE_CODE = 'customer_support') AND NOT is_permitted('members', 'customer_support', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735463].');
    ELSIF (:P6_ETYPE_CODE = 'vip_lounge_service') AND NOT is_permitted('members', 'vip_lounge_service', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735464].');
    ELSIF (:P6_ETYPE_CODE = 'staff') AND NOT is_permitted('members', 'staff', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735465].');
    ELSIF (:P6_ETYPE_CODE = 'staff_view') AND NOT is_permitted('members', 'staff_view', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735466].');
    ELSIF (:P6_ETYPE_CODE = 'marketing') AND NOT is_permitted('members', 'marketing', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735467].');
    ELSIF (:P6_ETYPE_CODE = 'financial') AND NOT is_permitted('members', 'financial', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735468].');
    ELSIF (:P6_ETYPE_CODE = 'director') AND NOT is_permitted('members', 'director', :G_MEMBER_ID, 'see', 'members') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied [82735469].');
    END IF;

END;