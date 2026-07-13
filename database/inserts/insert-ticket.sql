-- Tickets simples das alterações revisadas no site-sindicatto-admin.
-- Revisão realizada em 13/07/2026 com base no código do ZIP fornecido.
-- Os INSERTs abaixo evitam duplicidade pelo tenant + título.

INSERT INTO ticket (
    tenant_code, tenant_id, title, status,
    open_date, done_date, description, urgent
)
SELECT 'anpprev',
        (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Exibir vídeo da AGE na página de votações',
    'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Substituído o banner em imagem pelo vídeo da AGE na página de votações, mantendo a imagem anterior comentada para possível reutilização.',
    0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Exibir vídeo da AGE na página de votações');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Adicionar banner da AGE na página inicial', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Adicionado banner em vídeo da AGE na home do painel, com acesso direto para a página de votações.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Adicionar banner da AGE na página inicial');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Exibir votações antes do vídeo', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'A coluna com as votações passou a aparecer primeiro e o vídeo promocional depois.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Exibir votações antes do vídeo');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Priorizar votações abertas na listagem', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Votações abertas e ainda não concluídas são exibidas antes das indisponíveis e das já respondidas.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Priorizar votações abertas na listagem');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Destacar votação aberta com selo', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Adicionado o selo visual “Votação aberta agora”, inclusive quando a votação estiver liberada em modo de teste.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Destacar votação aberta com selo');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Ajustar card de voto registrado', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'O card já respondido mostra “Voto registrado”, não exibe o botão de votar e continua clicável para consulta.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Ajustar card de voto registrado');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Confirmar saída durante a votação', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Ao clicar em “Sair”, o sistema confirma a ação e informa que a votação poderá ser retomada dentro do prazo.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Confirmar saída durante a votação');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Salvar progresso para retomar a votação', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'As respostas avançadas ficam armazenadas por usuário e votação no navegador, permitindo continuar posteriormente.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Salvar progresso para retomar a votação');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Corrigir avanço da última pergunta', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'Após responder a última pergunta, o fluxo segue para a revisão das respostas antes da confirmação final.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Corrigir avanço da última pergunta');

INSERT INTO ticket (tenant_code, tenant_id, title, status, open_date, done_date, description, urgent)
SELECT 'anpprev', (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Restringir reset de teste para Beth', 'CONCLUIDO',
    DATE '2026-07-13', DATE '2026-07-13',
    'O botão administrativo para resetar a votação de teste aparece somente para beth@anpprev.org.br.', 0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Restringir reset de teste para Beth');

-- Pendente encontrado na revisão: o código atual ainda retorna para /votacoes.
INSERT INTO ticket (
    tenant_code, tenant_id, title, status,
    open_date, due_date, done_date, description, urgent
)
SELECT 'anpprev',
        (SELECT max(id) FROM tenant WHERE lower(code) = 'anpprev'),
    'Alterar retorno após finalizar a votação',
    'ABERTO',
    DATE '2026-07-13', NULL, NULL,
    'Trocar o botão final para “Ir para a página inicial (Home)” e direcionar o usuário para a home do painel.',
    0
FROM dual
WHERE NOT exists (SELECT 1
                  FROM ticket
                  WHERE lower(tenant_code) = 'anpprev'
                      AND title = 'Alterar retorno após finalizar a votação');

COMMIT;