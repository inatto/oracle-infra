-- Complemente este select, adicione uma linha no final baseada na imagem
CREATE OR REPLACE VIEW vw_mail_queue AS
SELECT mail.subject mail_subject
    , COUNT(*) total_enviados
    , vw.total_hard_bounces
    , vw.total_soft_bounces
    , vw.total_spam
    , mail_queue.created_at
FROM mail_queue
LEFT JOIN mail ON mail.id = mail_id
LEFT JOIN vw_smtp2go vw ON vw.label = mail.subject
GROUP BY mail_id, mail.subject, vw.total_hard_bounces, vw.total_soft_bounces, vw.total_spam, mail_queue.created_at

UNION
SELECT 'ASAnews 09/2025 – 25% Casas Bahia, 20% Nike Jordan, 15% Dr. Lava Tudo e 12% Riachuelo', 6415, 12, 38, 6, TO_DATE('2025-09-01 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews 09/2025 – HR-V e City 2026, 30% Pague Menos, 10% Morana e ofertas Renner', 6412, 10, 29, 5, TO_DATE('2025-09-01 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews 09/2025 – 80% Dafiti, 15% Mizuno e Mash, 12% Riachuelo e ofertas Zattini', 6411, 3, 9, 2, TO_DATE('2025-09-01 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews 09/2025 – Descontos Semanais: Pilates, Psicologia, Moda e Hotelaria', 6411, 2, 7, 1, TO_DATE('2025-09-11 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews 09/2025 – 20% Movida, 10% COC Lago Norte, 10% Escola DNA, 7% PneuStore e 10% Emma', 6415, 4, 9, 2, TO_DATE('2025-09-18 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual

UNION
SELECT 'ASAnews – 20% CVC e Nacional Inn, R$200 Decolar, 10% Vila Galé, até 20% Hplus', 6420, 9, 5, 6, TO_DATE('2025-11-13 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – Até 30% Bionatus, 22% Escola Canadense, 20% Progresso Bilíngue, 15% Dom José, 10% COC', 6415, 10, 5, 2, TO_DATE('2025-11-27 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 20% Nike e Sanavita, Curso de Francês CF, Veneza Water e APLI', 6415, 8, 3, 4, TO_DATE('2025-12-11 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 25% CIBL, 15% Amobeleza e Evino, 12% Stanley, 10% Imaginarium', 6415, 7, 7, 4, TO_DATE('2025-12-18 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual

UNION
SELECT 'ASAnews – Benefício Auto | Compra de Honda 0km com desconto ampliado para 7% (ASAcar)', 6415, 6, 7, 2, TO_DATE('2026-01-08 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews - 18% Insider, 15% Hering e Zattini, 12% Riachuelo, 10% Marcyn', 6415, 4, 7, 3, TO_DATE('2026-01-15 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
-- union select 'ASAnews – 15% Salon Line, Amobeleza e Océane',6417,5,5,3,  TO_DATE('2026-01-22 00:00','YYYY-MM-DD HH24:MI') from dual
-- union select '',6415,4,7,3,  TO_DATE('2026- 00:00','YYYY-MM-DD HH24:MI') from dual
UNION
SELECT 'ASAnews – ate 55% CEUB, 50% IESLA, ate 45% Anima e 10% Mackenzie', 6416, 3, 8, 9, TO_DATE('2026-01-29 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 10% IDP, ate 12% CESAR, 50% Faculdade Supremo e 20% UniProcessus', 6415, 4, 4, 4, TO_DATE('2026-02-05 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 10% Midea, 40% Domino’s Pizza, 15% O Boticário, 10% Morana e 10% O Francês Gravataaria', 6715, 8, 3, 11, TO_DATE('2026-02-13 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 15% Educandário Santa Mônica, até 18% Sigma, 50% Localiza Meoo, até 45% Berlitz e até 35% Seguros do Brasil', 6705, 7, 8, 9, TO_DATE('2026-02-17 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 35% Descomplica, 25% Merece Saúde, 15% Nutrify, 5% Electrolux e Continental e até 10% Shoestock', 6305, 11, 7, 11, TO_DATE('2026-02-27 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
-- 20260312                                                                                                                                                                                         --
UNION
SELECT 'ASAnews – 15% Quadros Ram, Black Fralda, 10–15% UTI Saúde Med, 20% Dr. Victor Almeida e 20% WineC', 6301, 7, 5, 8, TO_DATE('2026-03-05 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – Sorteio Adega Climatizada Brastemp 12 garrafas (APROM-BH)', 6301, 7, 5, 8, TO_DATE('2026-03-05 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – até 30% Sabin, 20% Dom Bosco, até 70% Approve + 20% extra, 10% Kaspersky e até 50% Mash', 6305, 5, 4, 0, TO_DATE('2026-03-16 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 15% Spa Saúde, 25% Hering (Mês da Mulher), 15% + 5% Elia Spa, 25% Luckau (Páscoa) e desconto progressivo Travelex Confidence', 6305, 2, 5, 0, TO_DATE('2026-03-16 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 20% Primeira, 5% MinutaIA, R$1000 Geely Eurovia, 20% Othon e 15% Insider', 6345, 6, 5, 2, TO_DATE('2026-03-27 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – ate 12% Movida, ate 25% PontoFrio, 15% Vivara, R$25 Evino e 5% Ikesaki', 6347, 5, 7, 1, TO_DATE('2026-04-02 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – Sorteio Adega Brastemp 12 garrafas exclusiva AMPCON', 98, 2, 1, 1, TO_DATE('2026-04-02 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'Sorteio Adega Climatizada ASAclub exclusiva 12 garrafas (SINPROFAZ)', 1100, 3, 2, 3, TO_DATE('2026-04-09 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 15% Olympikus e Under Armour, até 70% Zattini, 25% Extra e 60% Netshoes', 6351, 8, 8, 3, TO_DATE('2026-04-10 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – Sorteio Adega Brastemp 12 garrafas exclusiva SINPROFAZ ate 24/04/26', 1100, 3, 2, 3, TO_DATE('2026-04-14 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – Sorteio Especial Adega Brastemp 12 garrafas para associados AMPCON inscrição ate 24/04/26', 98, 1, 1, 1, TO_DATE('2026-04-16 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 15% Pneu Store, bonus R$13.200 Chevrolet e descontos Drogasil, Droga Raia, Pague Menos e Extrafarma', 6555, 7, 6, 4, TO_DATE('2026-04-22 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – até 40% Natura, 15% Oceane, 25% Hering e preços de atacado Atacadão Dia a Dia', 6558, 7, 7, 4, TO_DATE('2026-04-22 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – terapias Fiore, R$50 Giuliana Flores, 25% Gocase, até 25% Hoteis.com e até 35% Ibmec', 6558, 8, 9, 4, TO_DATE('2026-04-22 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 20% Hot Park, 10% Snowland, 10% Beto Carrero World e até 20% Porto Serviço', 6559, 11, 4, 5, TO_DATE('2026-04-22 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual
UNION
SELECT 'ASAnews – 15% Nação Verde, 10% Brasas, 20% Dom Bosco, 15% Eliá Spa e CheckUp Center BH', 6559, 9, 6, 3, TO_DATE('2026-04-22 00:00', 'YYYY-MM-DD HH24:MI')
FROM dual






-- 15/04/2026 01:00	ASACLUB - CLUBE DE BENEFÍCIOS	naoresponder@asaclub.org.br	SORTEIO ADEGA CLIMATIZADA	enviado	ASAnews – Sorteio Especial Adega Brastemp 12 garrafas para associados SINPROFAZ inscrição ate 24/04/26
-- ASAnews – Sorteio Adega Brastemp 12 garrafas exclusiva SINPROFAZ ate 24/04/26

;

SELECT *
FROM vw_mail_queue
ORDER BY created_at DESC
;

SELECT mail_queue.id
    , mail.id
    , mail.subject
    , mail_queue.name
    , mail_queue.email
    , mail_queue.last_try
    , mail_queue.opened_at
    , mail_queue.status
    , mail_queue.priority

FROM mail_queue
LEFT JOIN mail ON mail.id = mail_id
WHERE 1
;
-- and mail_id = 14
-- and email like '%leandro.a.carneiro@gmail.com%'
;

-- "ASAnews 09/2025 – 25% Casas Bahia, 20% Nike Jordan, 15% Dr. Lava Tudo e 12% Riachuelo"
-- "ASAnews 09/2025 – HR-V e City 2026, 30% Pague Menos, 10% Morana e ofertas Renner"
