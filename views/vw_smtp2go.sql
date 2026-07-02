-- VIEW SIMPLES AGRUPADA POR SUBJECT (Oracle)
CREATE OR REPLACE VIEW vw_smtp2go AS
SELECT *
FROM smtp2go
WHERE 1 = 1
    -- 20260621-0249 email suporte@sindicatto.com
    AND username = 'api-207565AC5AEA'
;

SELECT * FROM vw_smtp2go;


-- delete from smtp2go where subject = 'ASAnews – 35% Descomplica, 25% Merece Saúde, 15% Nutrify, 5% Electrolux e Continental e até 10% Shoestock';
-- ;