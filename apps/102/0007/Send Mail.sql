DECLARE

    title VARCHAR2(200);

BEGIN

    --
    title := 'Ticket - ' || :P7_TITLE;
    -- if (:P5_ACTION = 'New') then
    -- title  := 'Novo ticket - ' || :P7_TITLE;
    -- end if;

    --
    prc_http_mail(title, :P7_DESCRIPTION, :P7_OPEN_DATE, :P7_DONE_DATE);

END;

