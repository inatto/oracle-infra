-- VIEW SIMPLES AGRUPADA POR SUBJECT (Oracle)
CREATE OR REPLACE VIEW vw_smtp2go AS
SELECT
    subject AS label,
    SUM(CASE WHEN event_type IN ('Processed', 'Delivered')    THEN 1 ELSE 0 END) AS total_enviados,
    SUM(CASE WHEN event_type = 'Hard Bounce' THEN 1 ELSE 0 END) AS total_hard_bounces,
    SUM(CASE WHEN event_type = 'Soft Bounce' THEN 1 ELSE 0 END) AS total_soft_bounces,
    SUM(CASE WHEN event_type = 'Spam'        THEN 1 ELSE 0 END) AS total_spam
FROM smtp2go
GROUP BY subject
ORDER BY subject;

select * from vw_smtp2go;


-- delete from smtp2go where subject = 'ASAnews – 35% Descomplica, 25% Merece Saúde, 15% Nutrify, 5% Electrolux e Continental e até 10% Shoestock';
-- ;