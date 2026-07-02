CREATE OR REPLACE VIEW vw_raw_ticket AS
SELECT TO_CHAR(open_date, 'dd/mm/yyyy') open_date_str
    , TO_CHAR(done_date, 'dd/mm/yyyy') done_date_str
    , ticket.*

FROM ticket

/
SELECT * FROM vw_raw_ticket
/