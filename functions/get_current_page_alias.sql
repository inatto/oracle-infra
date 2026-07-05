CREATE OR REPLACE FUNCTION get_current_page_alias RETURN varchar2 IS

    l_page_alias varchar2(100);

BEGIN

    SELECT lower(page_alias)
    INTO l_page_alias
    FROM apex_application_pages
    WHERE application_id = to_number(v('APP_ID'))
        AND page_id = to_number(v('APP_PAGE_ID'));

    --
    RETURN l_page_alias;

EXCEPTION
    WHEN no_data_found THEN
        RETURN lower(v('APP_PAGE_ID'));
END;
/