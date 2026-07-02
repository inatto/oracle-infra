-- Inserts gerados a partir dos arquivos PHP em news/ do ZIP enviado.
-- Colunas de imagem omitidas: IMAGE_BLOB, IMAGE_MIME_TYPE, IMAGE_FILENAME, IMAGE_ALT, IMAGE_URL, IMAGE_UPDATED_AT.
-- TENANT_CODE assumido: SINPROPREV
-- CTYPE_CODE assumido: news
-- ID omitido por ser identity. CREATED_AT/UPDATED_AT omitidos porque a trigger TG_CONTENT_BIU define timestamps.

-- Fonte: news/sinproprev-e-procuradora-regional-federal-abordam-acoes-coletivas.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~SINPROPREV e procuradora regional federal abordam ações coletivas~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p>A Diretoria Jurídica do Sindicato Nacional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central (SINPROPREV) se reuniu, em Brasília, na tarde desta segunda-feira (23) com a procuradora regional federal da 1ª Região, Dra. Lucia Penna, para tratar das ações coletivas em andamento, em especial, das ações com tratativas ou com viabilidade de acordo.</p>
<p>Com destaque, o primeiro item da pauta foi o acordo dos 3,17%. O acordo que havia sido celebrado em fevereiro de 2024, estava aguardando parecer definitivo sobre a vantajosidade do acordo. Dra. Lucia Penna sinalizou que priorizará a comunicação da conclusão do acordo para início das tratativas operacionais. Oportunamente, os beneficiários serão comunicados sobre as próximas etapas.</p>
<p>No tocante aos processos dos 28,86%, a Diretoria Jurídica apresentou proposta de estudo do Tema 1102/STJ à Procuradoria, sugerindo reavaliação dos processos cujos beneficiários teriam recebido parcelas administrativas.</p>
<p>Outros assuntos de interesse da categoria, como a Gratificação de Desempenho de Atividade Jurídica (GDAJ), também foram pauta da reunião em que a Diretoria buscou acompanhar de perto o desenvolvimento dos processos patrocinados pela entidade.</p>~')
);

-- Fonte: news/Portaria_001_2026_Vice-Presidencia.html.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~SINPROPREV publica Portaria nº 001/2026 sobre delegação de competências à Vice-Presidência~'
, TO_DATE('2026-01-04', 'YYYY-MM-DD')
, TO_CLOB(q'~<p style="text-align: justify;"><span style="font-size: 18px;">O Sindicato Nacional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central – SINPROPREV publicou a Portaria PRES/SINPROPREV nº 001/2026, assinada pelo presidente Aluizo Silva de Lucena, que trata da delegação de competências à Vice-Presidência com foco na organização do funcionamento interno do Sindicato.</span></p>
<p style="text-align: justify;"><span style="font-size: 18px;">A partir do ato, a vice-presidente Maria Santíssima Marques passa a exercer atribuições administrativas e operacionais voltadas à coordenação das rotinas internas, à organização de fluxos de trabalho e ao acompanhamento das deliberações da Diretoria, contribuindo para maior eficiência e racionalidade na gestão do SINPROPREV.</span></p>
<p style="text-align: justify;"><span style="font-size: 18px;">A iniciativa integra o conjunto de providências adotadas pela nova gestão com o objetivo de aprimorar a organização interna e fortalecer o funcionamento institucional do SINPROPREV.</span></p>~')
);

-- Fonte: news/comunicado-da-comissao-eleitoral-eleicoes-anpprev-e-sinproprev-2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Comunicado da Comissão Eleitoral - ELEIÇÕES ANPPREV e SINPROPREV 2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p style="text-align: justify;"><strong><span style="">Prezados(as) associados(as),</span></strong></p>
<p style="text-align: justify;"><span style="">A Comissão Eleitoral reforça que, conforme o Regulamento Eleitoral vigente, é expressamente proibida a veiculação de qualquer conteúdo de campanha eleitoral em canais institucionais da ANPPREV e do SINPROPREV, incluindo todos os grupos oficiais de WhatsApp.</span></p>
<p style="text-align: justify;"><span style="">O objetivo da regra é garantir a neutralidade dos canais institucionais e assegurar igualdade de condições entre as chapas.</span></p>
<p style="text-align: justify;"><span style="">Manifestos individuais que configurem desinformação, ataques pessoais ou campanha velada poderão ser analisados pela Comissão, desde que encaminhados formalmente, com identificação e prints, para:</span><br/><span style=""><a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a></span></p>
<p style="text-align: justify;"><span style="">Solicitamos a colaboração de todos para manter o ambiente institucional organizado, respeitoso e alinhado às normas do processo eleitoral.</span></p>
<p style="text-align: justify;"><span style="">Atenciosamente,</span><br/><span style="font-size: 18px;">Comissão Eleitoral – Eleições 2025</span></p>~')
);

-- Fonte: news/edital-de-convocacao-assembleia-extraordinaria-sinproprev.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~EDITAL DE CONVOCAÇÃO ASSEMBLEIA EXTRAORDINÁRIA SINPROPREV~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p style="text-align: center;"><strong>ASSEMBLEIA EXTRAORDINÁRIA</strong></p>
<p>O <strong>Sindicato Nacional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central – SINPROPREV</strong>, inscrito no CNPJ sob o nº 02.764.607/0001-73, neste ato representado por sua presidente, Maria Santíssima Marques, nos termos das disposições legais e estatutárias vigentes, convoca todos os seus sindicalizados, em conformidade com os artigos 6º e 7º do Estatuto do SINPROPREV, para participarem da Assembleia Extraordinária a ser realizada no dia 05 de novembro de 2024 (terça-feira), em modalidade virtual.</p>
<p>A Assembleia ocorrerá por meio do sistema eletrônico de votação acessível no site da ANPPREV (www.anpprev.org.br), com início às 09h, em primeira convocação, exigindo-se a maioria absoluta dos sindicalizados. Caso não haja quórum suficiente, será realizada em segunda e última convocação às 10h, com qualquer número de participantes. A assembleia permanecerá aberta para deliberações até as 18h do dia 05 de novembro de 2024.</p>
<p><strong>ORDEM DO DIA:</strong></p>
<ul>
<li>Proposta de Acordo apresentada pelo INSS nas ações executivas da GDAJ – Processo n. 0023747-96.2000.4.01.3400.</li>
</ul>
<p style="text-align: center;">Brasília, 25 de outubro de 2024</p>
<p style="text-align: center;"><strong>Maria Santíssima Marques</strong></p>
<p style="text-align: center;">Presidente</p>
<p style="text-align: center;"> </p>
<p style="text-align: left;"><span style="font-size: 16px;"><a href="https://anpprev.sinproprev.org.br/redactor_data/20241025173622_25.10.2024_convocacao-de-assembleia---aprovacao-de-proposta-gdaj---sinproprev_assinado.pdf">Confira aqui o edital.</a></span></p>~')
);

-- Fonte: news/eleicao_sinproprev_2025_resultado.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Comunicado Oficial da Comissão Eleitoral~'
, TO_DATE('2025-12-02', 'YYYY-MM-DD')
, TO_CLOB(q'~<p style="text-align: justify;"><span style="">Encerrada às <strong>23h59 desta segunda-feira, 1º de dezembro de 2025</strong>, a votação eletrônica que definiu os membros dos <strong>Conselhos Executivo</strong> e<strong> Fiscal da ANPPREV</strong>, bem como da <strong>Diretoria Geral</strong> e do <strong>Conselho Fiscal do SINPROPREV</strong> para o <strong>triênio 2026-2029</strong>.</span></p>
<p style="text-align: justify;"><span style="">A <strong>Comissão Eleitoral proclama</strong>, neste ato, o <strong>resultado oficial da votação</strong>, conforme relatório emitido pela empresa responsável pela plataforma, <strong>validado integralmente pela auditoria eleitoral</strong>.</span></p>
<p style="text-align: justify;"><span style=""><strong><a href="https://anpprev.sinproprev.org.br/redactor_data/20251202003610_result-assinado.pdf">Clique aqui</a> para ver o resultado das eleições.</strong></span></p>~')
);

-- Fonte: news/eleicoes_sinproprev_2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Eleição SINPROPREV 2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><b>Eleição SINPROPREV</b></p>
<p>
											O Sindicato Nacional dos Procuradores Federais, Advogados da União e Procuradores do Banco Central – SINPROPREV convoca seus sindicalizados para o processo eleitoral que elegerá a Diretoria-Geral e o Conselho Fiscal da entidade.
										</p>
<p>O pleito será realizado no dia 1º de dezembro de 2025, por meio de processo eletrônico de votação. _As inscrições de chapas estarão abertas entre o primeiro e o último dia útil da primeira quinzena de novembro de 2025_, conforme estabelece o Estatuto Social.</p>
<p>O Edital, o Regulamento Eleitoral e os Formulários de Inscrição seguem anexos a esta notícia, garantindo acesso direto aos candidatos interessados.</p>
<ol>
<li>
<b>📌 Edital de Convocação</b> -
												<a href="https://sinproprev.org.br/file/EDITAL_ELEICAO_SINPROPREV_2025_assinado.pdf" target="_blank">
													Clique aqui</a>
</li>
<li>
<b>📌 Regulamento Eleitoral</b> -
												<a href="https://sinproprev.org.br/file/2025_RESOLUCAO%20001_2025_SINPROPREV_ELEICAO_V2.pdf" target="_blank">
													Clique aqui</a>
</li>
<!--											<li>-->
<!--												<b>📌 Anexo I – Formulário de Inscrição Chapa Diretoria-Geral</b> –-->
<!--												<a target="_blank" href="https://sinproprev.org.br/file/ANEXO_I_FORMULARIO%20INSCRICAO_CHAPA_SINPROPREV_DIRETORIA_GERAL.xlsx">-->
<!--													Clique aqui-->
<!--												</a>-->
<!--											</li>-->
<!--											<li>-->
<!--												<b>📌 Anexo II – Formulário de Inscrição Chapa Conselho Fiscal</b> --->
<!--												<a target="_blank" href="https://sinproprev.org.br/file/ANEXO_II_FORMULARIO_INSCRICAO_CHAPA_SINPROPREV_CONSELHO%20FISCAL.xlsx">-->
<!--													 Clique aqui-->
<!--												</a>-->
<!--											</li>-->
</ol>
<p>
											Para esclarecimentos adicionais, a Comissão Eleitoral encontra-se à disposição pelo e-mail: <a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a>
</p>~')
);

-- Fonte: news/age-sinproprev-comunicado-do-presidente.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~AGE SINPROPREV - COMUNICADO DO PRESIDENTE~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p style="text-align: center;"><strong>AGE SINPROPREV - COMUNICADO DO PRESIDENTE</strong></p>
<p>Na qualidade de Presidente do SINPROPREV, compartilho com os(as) colegas o resultado da votação eletrônica encerrada ontem, 05/11, às 18h:</p>
<p><strong>Pergunta 01</strong>: Você aprova a proposta de acordo coletivo conforme registrado na Ata de Audiência de 05/09/2024, nos autos da ação nº0023747-96.2000.4.01.3400, em trâmite na 5ª Vara Federal do Distrito Federal?</p>
<p>222 votos a favor<br/>00 voto contrário<br/>02 votos em branco</p>
<p><strong>Pergunta 02</strong>: Você autoriza o SINPROPREV a firmar o acordo proposto, com deságio de até 20% sobre o valor atualizado do crédito e demais condições estabelecidas?</p>
<p>217 votos a favor<br/>01 voto contrário<br/>06 votos em branco</p>
<p>Agradecemos a participação de todos os 224 sindicalizados que contribuíram com seu voto.</p>
<p style="text-align: center;">Maria Santíssima Marques<br/>Presidente</p>~')
);

-- Fonte: news/nova_diretoria_sinproprev.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Posse do nova Diretoria e Conselho Fiscal do SINPROPREV~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><span style="font-size: 18px;">Na data de hoje, 02 de janeiro, tomam posse os membros da Diretoria e Conselho Fiscal do SINPROPREV - Sindicato Nacional dos Procuradores e Advogados Públicos Federais, eleitos para o triênio 2026–2029.</span></p>
<p><span style="font-size: 18px;">O início do novo mandato representa a continuidade do trabalho institucional voltado ao fortalecimento da representação associativa e sindical, à valorização da advocacia pública federal e à atuação técnica e responsável em defesa dos interesses dos associados, ativos, aposentados e pensionistas.</span></p>
<p> </p>
<p><strong><span style="font-size: 18px;">Diretoria Geral do SINPROPREV – Triênio 2026/2029</span></strong></p>
<p><span style="font-size: 18px;">Presidência</span><br/><span style="font-size: 18px;">Aluizo Silva de Lucena</span></p>
<p><span style="font-size: 18px;">Vice-Presidência e Assuntos Institucionais</span><br/><span style="font-size: 18px;">Titular: Maria Santíssima Marques</span></p>
<p><span style="font-size: 18px;">2ª Vice-Presidência</span><br/><span style="font-size: 18px;">Titular: Guilhermina Guilherme Medeiros</span><br/><span style="font-size: 18px;">Suplente: Sérgio Bueno</span></p>
<p><span style="font-size: 18px;">Diretoria de Administração, Patrimônio e Eventos</span><br/><span style="font-size: 18px;">Titular: Elaine Lustz Portela</span><br/><span style="font-size: 18px;">Suplente: Silvia Cândida da Rocha Mesquita</span></p>
<p><span style="font-size: 18px;">Diretoria de Orçamento e Finanças</span><br/><span style="font-size: 18px;">Titular: Francisco Airton Bezerra Martins</span><br/><span style="font-size: 18px;">Suplente: Elvis Gallera Garcia</span></p>
<p><span style="font-size: 18px;">Diretoria de Aposentados, Pensionistas e Serviço Social</span><br/><span style="font-size: 18px;">Titular: Odinea Ferreira Miranda</span><br/><span style="font-size: 18px;">Suplente: Amélia Cristina Marques Caracas</span></p>
<p><span style="font-size: 18px;">Diretoria de Comunicação Institucional e Relações Públicas</span><br/><span style="font-size: 18px;">Titular: Maria Dolores Oenning Andrade</span><br/><span style="font-size: 18px;">Suplente: Marina Brito Battilani</span></p>
<p><span style="font-size: 18px;">Diretoria de Assuntos Jurídicos</span><br/><span style="font-size: 18px;">Titular: José Eduardo Cruz Dias Lima</span><br/><span style="font-size: 18px;">Suplente: José Weber Holanda Alves</span></p>
<p><span style="font-size: 18px;">Diretoria de Negociação e Assuntos Sindicais</span><br/><span style="font-size: 18px;">Titular: Ana Dorinda Carballeda Adsuara</span><br/><span style="font-size: 18px;">Suplente: Alan Lacerda de Souza</span></p>
<p><span style="font-size: 18px;">Diretoria de Assuntos Legislativos</span><br/><span style="font-size: 18px;">Titular: Luciana Hoff</span><br/><span style="font-size: 18px;">Suplente: Vania Maria Bastos Faller</span></p>
<p><span style="font-size: 18px;">Diretoria de Assuntos Estratégicos</span><br/><s~')
        || TO_CLOB(q'~pan style="font-size: 18px;">Titular: Kedma Iara Ferreira</span><br/><span style="font-size: 18px;">Suplente: Eni Terezinha Aragão Duarte</span></p>
<p><strong><span style="font-size: 18px;">Conselho Fiscal do SINPROPREV – Triênio 2026/2029</span></strong><br/><span style="font-size: 18px;">Titular: Gustavo Castro Boia de Albuquerque | Suplente: Marisa Cassia Batista de Sá</span><br/><span style="font-size: 18px;">Titular: Djalmo Luiz Cardoso Tinoco | Suplente: Marcilio da Silva</span><br/><span style="font-size: 18px;">Titular: Luzia Cecília Costa Miranda | Suplente: Alice Prudente de Oliveira</span></p>~')
);

-- Fonte: news/eleicoes-sinproprev-2025-despacho-comissao-eleitoral-no-013-2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~ELEIÇÕES SINPROPREV 2025 - DESPACHO COMISSÃO ELEITORAL Nº 013/2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p style="text-align: justify;"><span style="">A Comissão Eleitoral emitiu, neste sábado, 15 de novembro, o Despacho nº 013/2025, deferindo a inscrição da Chapa SINPROPREV PARA TODOS, referente a Diretoria Geral do SINPROPREV.</span><br/><br/><span style="">Documentos publicados:</span></p>
<ul style="text-align: justify;">
<li><span style="">Despacho da Comissão Eleitoral — <a href="https://anpprev.sinproprev.org.br/redactor_data/20251115151813_despacho_013_2025_inscricao_de_chapa_sinproprev_p.pdf">Clique aqui.</a></span></li>
</ul>
<ul style="text-align: justify;">
<li><span style="">Certidão da Secretaria da Comissão Eleitoral — <a href="https://anpprev.sinproprev.org.br/redactor_data/20251115153403_compilado-sinproprev.pdf">Clique aqui.</a></span></li>
</ul>
<ul style="text-align: justify;">
<li><span style="">Propostas da Chapa — <a href="https://anpprev.sinproprev.org.br/redactor_data/20251115152954_programas-e-metas.pdf">Clique aqui.</a></span></li>
</ul>
<ul style="text-align: justify;">
<li><span style="">Confira os integrantes da Chapa — <a href="https://anpprev.sinproprev.org.br/redactor_data/20251115151917_chapa-sinproprev-para-todos.pdf">Clique aqui.</a></span></li>
</ul>
<p style="text-align: justify;"><span style="">Os documentos completos permanecem arquivados na Secretaria da Comissão Eleitoral, onde poderão ser consultados pelos(as) associados(as), mediante requisição formal, em conformidade com a LGPD.</span></p>~')
);

-- Fonte: news/convocacao-para-assembleia-geral-extraordinaria-sinproprev.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Convocação para Assembleia Geral Extraordinária - SINPROPREV~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p>A pauta da assembleia será:</p>
<ul>
<li>I. Alteração do estatuto social, a fim de adequar a categoria representada, bem como atualizar suas disposições;</li>
<li>II. Alteração de denominação</li>
</ul>
<p>Data: 24 de setembro de 2024<br/>Horário: 9h<br/>Local: SAUS, Quadra 06, Bloco K, Ed. Belvedere, Grupo IV. Brasília/DF.</p>
<p>Participe e faça a diferença!</p>
<p> </p>
<p style="text-align: center;"></p>~')
);

-- Fonte: news/eleicoes_passo_passo.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Passo a passo para os candidatos~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p>&lt;p&gt;&lt;span style="font-size: 20px;"&gt;&lt;strong&gt;Passo a passo para os candidatos&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;</p>
<p>Prezados(as) associados(as),</p>
<p>As inscrições para as eleições da ANPPREV e do SINPROPREV terão início na próxima segunda-feira, dia 03 de novembro de 2025, e seguirão abertas até o dia 14 de novembro de 2025.</p>
<p>Com o objetivo de facilitar a participação de todos os associados, será disponibilizado, nos sites das entidades, um PDF com o passo a passo completo para a inscrição das chapas e candidaturas.<br/>O material trará orientações detalhadas sobre o acesso à plataforma, o preenchimento dos formulários e o envio da documentação exigida, assegurando que todos os procedimentos sejam realizados de acordo com os regulamentos eleitorais.</p>
<p><a href="https://anpprev.sinproprev.org.br/redactor_data/20251102101806_passo-a-passo-candidatura.pdf" target="_blank"><b>Clique aqui</b> </a>e <b>confira o documento</b>: </p>
<p><b>Cartas com senhas de votação</b><br/>As cartas contendo as senhas de acesso à plataforma eleitoral já foram expedidas e deverão chegar aos endereços dos associados nos próximos dias.<br/>- Para quem já recebeu a carta: é possível alterar a senha diretamente no site, caso deseje.<br/>- Para quem ainda não recebeu: recomenda-se aguardar a chegada da correspondência.<br/>- Caso a carta não sea recebida até o dia 24 de novembro de 2025, o associado poderá solicitar o envio de nova senha pelo “Posso ajudar?” no site <a href="https://voteanpprevsinproprev.com.br">voteanpprevsinproprev.com.br</a></p>
<p><b>Importante:</b><br/>A troca ou criação de senha não tem limitação de quantidade de vezes. Sempre que uma nova senha for criada ou alterada, a anterior será automaticamente invalidada, passando a valer apenas a nova, inclusive a senha originalmente recebida na carta.<br/><br/><b>Participação no pleito</b>:<br/>Conforme estatuto das entidades, somente associados em situação regular poderão participar das eleições.<br/>Verifique sua situação associativa com o Departamento Financeiro pelo WhatsApp (61) 98198-8368.</p>
<p><br/>Acesse:<br/><a href="https://anpprev.org.br">anpprev.org.br</a><br/><a href="https://sinproprev.org.br">sinproprev.org.br</a></p>
<p>Dúvidas: <a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a></p>~')
);

-- Fonte: news/eleicao_sinproprev_despacho_03_2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~ELEIÇÕES SINPROPREV 2025 - DESPACHO COMISSÃO ELEITORAL Nº 003/2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><span style="font-size: 18px;"><strong>A Comissão Eleitoral emitiu, nesta terça-feira, 4 de novembro, o Despacho nº 003/2025, deferindo a inscrição da Chapa 01 – "Somos Todos SINPROPREV: Base Forte, Futuro Sólido”, referente a Diretoria Geral do SINPROPREV.</strong></span></p>
<p><span style="font-size: 18px;"><strong>Documentos publicados:</strong></span></p>
<ul>
<li><span style="font-size: 18px;"><strong>Despacho da Comissão Eleitoral — <a href="https://sinproprev.org.br/file/20251105133048_despacho_003_2025_chapa_sinproprev_dg_assinado-2.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<ul>
<li><span style="font-size: 18px;"><strong>Certidão da Secretaria da Comissão Eleitoral — <a href="https://sinproprev.org.br/file/20251105133321_001_2025_certidAo-secretaria-comissAo-eleitoral-sinproprev-_dg_assinado.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<ul>
<li><span style="font-size: 18px;"><strong>Propostas da Chapa — <a href="https://sinproprev.org.br/file/20251105133349_propostas-chapa.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<p> </p>
<p><span style="font-size: 18px;"><strong>Os documentos completos permanecem arquivados na Secretaria da Comissão Eleitoral, onde poderão ser consultados pelos(as) associados(as), mediante requisição formal, em conformidade com a LGPD.</strong></span></p>~')
);

-- Fonte: news/eleicao_sinproprev_2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Comissão Eleitoral constituída~'
, TO_DATE('2025-09-29', 'YYYY-MM-DD')
, TO_CLOB(q'~<p>Nesta segunda-feira, 29 de setembro, foi oficialmente nomeada a Comissão Eleitoral (CE) responsável pela condução das Eleições do SINPROPREV.</p>
<p>Integram a CE os(as) seguintes associados(as):</p>
<ul>
<li>1. Rodrigo Saito Barreto (DF)</li>
<li>2. Luciana Andrade da Luz Fontes (DF)</li>
<li>3. Wilson de Castro Júnior (DF)</li>
<li>4. Frederico Cesário Castro de Souza (BA)</li>
<li>5. Regina Célia Gomes de Moura (GO)</li>
</ul>
<p>Confira a portaria de nomeação <a href="/file/PORTARIA SINPROPREV_ Nº 001_2025_COMISSÃO ELEITORAL 2025.pdf" target="_blank">aqui</a>.</p>
<p>O Estatuto do Sindicato está disponível para consulta no menu <a href="https://sinproprev.org.br/estatuto.php">Estatuto</a> deste site e na área restrita do site da <a href="https://anpprev.org.br/">ANPPREV</a>.</p>~')
);

-- Fonte: news/processo-eleitoral-sinproprev-2025-confira-as-chapas-inscritas.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~PROCESSO ELEITORAL SINPROPREV 2025 - Confira as chapas inscritas!~'
, TO_DATE('2025-11-17', 'YYYY-MM-DD')
, TO_CLOB(q'~<p><span style="">A Comissão Eleitoral informa que as chapas inscritas para os Conselhos do SINPROPREV já estão disponíveis para consulta no site oficial.</span></p>
<p><span style=""><strong>SINPROPREV – Conselho Fiscal</strong></span></p>
<ul>
<li><span style="">Chapa 01 – Somos Todos SINPROPREV – Pres. Gustavo Castro Boia de Albuquerque - <em>Confira aqui a composição da Chapa:</em></span><br/><span style=""><a href="https://bit.ly/DESPACHOCOMISSÃOELEITORALN0042025">https://bit.ly/DESPACHOCOMISSÃOELEITORALN0042025</a></span></li>
</ul>
<p><span style=""><strong>SINPROPREV – Diretoria Geral</strong></span></p>
<ul>
<li><span style="">Chapa 01 – Somos Todos SINPROPREV – Pres. Aluizo Silva de Lucena - <em>Confira a composição e metas da Chapa:</em> <a href="https://bit.ly/DESPACHOCOMISSÃOELEITORALN0032025">https://bit.ly/DESPACHOCOMISSÃOELEITORALN0032025</a></span></li>
</ul>
<ul>
<li><span style="">Chapa 02 - SINPROPREV Para Todos – Pres. Carlos Domingos Mota Coelho - <em>Confira a composição e metas da Chapa:</em></span><br/><span style=""><a href="https://bit.ly/DESPACHOCOMISSÃOELEITORALN0132025">https://bit.ly/DESPACHOCOMISSÃOELEITORALN0132025</a></span></li>
</ul>
<p style="text-align: center;"><span style="font-size: 18px;">A eleição ocorrerá no dia 01/12, das 00h às 23h59, exclusivamente no site:</span><br/><span style="font-size: 18px;"><a href="https://voteanpprevsinproprev.com.br/#/home">voteanpprevsinproprev.com.br</a></span></p>~')
);

-- Fonte: news/eleicoes_inscricoes.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Eleições SINPROPREV 2025 – Inscrições Abertas!~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><strong><span style="font-size: 18px;">Eleições SINPROPREV 2025 – Inscrições Abertas!</span></strong></p>
<p><span style="font-size: 18px;">Estão oficialmente abertas as inscrições das chapas para as eleições da SINPROPREV, referentes ao triênio <strong>2026/2029</strong>.</span></p>
<p><span style="font-size: 18px;">- Período de inscrição: <strong>de 03 a 14 de novembro de 2025</strong></span><br/><span style="font-size: 18px;">- Local: <a href="https://voteanpprevsinproprev.com.br/">voteanpprevsinproprev.com.br</a></span></p>
<p><span style="font-size: 18px;">Os interessados devem acessar a plataforma eletrônica para realizar o registro da chapa e dos candidatos.</span></p>
<p><span style="font-size: 18px;"><strong>As inscrições deverão ser realizadas exclusivamente pelo site, não sendo aceitas por outro meio.</strong></span></p>
<p><span style="font-size: 18px;">Para mais informações, entre em contato com a Comissão Eleitoral pelo e-mail: <a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a></span></p>~')
);

-- Fonte: news/comunicacao-com-a-comissao-eleitoral-processo-eleitoral-anpprev-e-sinproprev-2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Comunicação com a Comissão Eleitoral - Processo Eleitoral ANPPREV e SINPROPREV 2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><span style="">Prezados(as),</span></p>
<p><span style="">Informamos que <strong>todas as comunicações, dúvidas, requerimentos e solicitações relacionadas ao processo eleitoral da ANPPREV e do SINPROPREV devem ser encaminhadas exclusivamente para o e-mail oficial da Comissão Eleitoral:</strong> <a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a></span></p>
<p><span style=""><em>Não será permitido contato telefônico com qualquer membro da Comissão Eleitoral ou com a Secretaria da Comissão, ainda que seja funcionária(o) da ANPPREV.</em></span></p>
<p><span style=""><strong>Somente mensagens enviadas para o e-mail oficial serão consideradas e respondidas.</strong></span></p>
<p><span style="">As postagens ou mensagens enviadas em grupos de WhatsApp não serão respondidas nem caracterizam consulta formal à Comissão Eleitoral.</span></p>
<ul>
<li><span style=""><strong>O Edital de Convocação, os Regulamentos Eleitorais e os Estatutos das entidades podem ser consultados na página inicial do site oficial de votação:</strong></span></li>
</ul>
<p style="text-align: center;"><span style=""><a href="https://voteanpprevsinproprev.com.br/#/home">voteanpprevsinproprev.com.br</a></span></p>
<ul>
<li><span style="">Os documentos também estão disponíveis nos sites institucionais:</span></li>
</ul>
<p style="text-align: center;"><span style=""><a href="https://anpprev.org.br/">anpprev.org.br</a></span></p>
<p style="text-align: center;"><span style=""><a href="https://sinproprev.org.br/">sinproprev.org.br</a></span></p>
<p><span style="">Reforçamos que os atos da Comissão Eleitoral divulgados em grupos servem apenas para conhecimento, não constituindo canais oficiais de comunicação.</span></p>
<p><span style="">Agradecemos a compreensão e colaboração de todos.</span></p>
<p><span style=""><strong>Comissão Eleitoral 2025</strong></span></p>~')
);

-- Fonte: news/resultado-do-julgamento-do-tema-repetitivo.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Resultado do julgamento do Tema repetitivo 1102/STJ beneficiará associados da ANPPREV e filiados do Sinproprev nas ações relativas ao 28,86%~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p>Ao apreciar os Recursos Especiais nºs 1.925.176/PA, 1.925.194/RO e 1.925.190/DF, representativos da controvérsia, à unanimidade, nos termos do voto do Relator, Ministro Afrânio Vilela, o Colegiado manteve a jurisprudência reiterada do Superior Tribunal de Justiça sobre a matéria, fixando as seguintes teses:</p>
<ul>
<li>É possível a comprovação de transação administrativa, relativa ao pagamento da vantagem de 28,86%, por meio de fichas financeiras ou documento expedido pelo Sistema Integrado de Administração de Recursos Humanos - SIAPE, conforme art. 7º, § 2º, da MP nº 2.169-43/2001, apenas em relação a acordos firmados em momento posterior à vigência dessa norma; e</li>
<li>Quando não for localizado o instrumento de transação devidamente homologado, e buscando impedir o enriquecimento ilícito, os valores recebidos administrativamente a título de 28,86%, demonstrados por meio dos documentos expedidos pelo SIAPE, devem ser deduzidos do valor apurado, com as atualizações pertinentes.</li>
</ul>
<p>A questão enfrentada no Tema Repetitivo 1102/STJ afeta diretamente mais de 30 mil processos e o resultado obtido beneficiará centenas de milhares de servidores públicos, incluídos os associados da ANPPREV e os filiados do SINPROPREV. </p>~')
);

-- Fonte: news/eleicoes-sinproprev-2025-despacho-da-comissao-eleitoral-no-010-2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~ELEIÇÕES SINPROPREV 2025 - DESPACHO DA COMISSÃO ELEITORAL Nº 010/2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><span style=""><strong>A Comissão Eleitoral emitiu, na última sexta-feira, 14 de novembro, Despacho nº 010/2025, estabelecendo prazo para regularização da inscrição da Chapa SINPROPREV PARA TODOS, para a Diretoria Geral do SINPROPREV.</strong></span></p>
<h3 data-end="114" data-start="84"><span style=""><strong>Documentos publicados:</strong></span></h3>
<ul data-end="431" data-start="326">
<li data-end="431" data-start="386">
<p data-end="431" data-start="388"><span style=""><strong>Despacho da Comissão Eleitoral — <a href="https://anpprev.sinproprev.org.br/redactor_data/20251115114059_despacho-010_2025_inscria-CC-83_a-CC-83_o-de-chapa-sinproprev_diretoria-geral.pdf">Clique aqui.</a></strong></span></p>
</li>
</ul>
<p><span style=""> </span></p>
<p><span style=""><strong>Os documentos completos permanecem arquivados na Secretaria da Comissão Eleitoral, onde poderão ser consultados pelos(as) associados(as), mediante requisição formal, em conformidade com a LGPD.</strong></span></p>~')
);

-- Fonte: news/nao-recebeu-a-carta-com-a-senha9-saiba-como-garantir-seu-voto.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~Não recebeu a carta com a senha? Saiba como garantir seu voto!~'
, TO_DATE('2025-11-13', 'YYYY-MM-DD')
, TO_CLOB(q'~<p><span style="font-size: 20px;"><strong>Não recebeu a carta com a senha? Saiba como garantir seu voto!</strong></span></p>
<p><span style="font-size: 18px;">As cartas contendo as senhas de acesso à plataforma de votação <strong>já foram enviadas</strong> e devem chegar aos associados nos próximos dias.</span></p>
<p><span style="font-size: 18px;"><strong>Data da eleição</strong></span><br/><span style="font-size: 18px;">A eleição ocorrerá no dia 1º de dezembro de 2025, com votação exclusivamente eletrônica, pelo site:<br/></span><span style="font-size: 18px;"><a href="https://voteanpprevsinproprev.com.br/#/home">voteanpprevsinproprev.com.br</a></span></p>
<p><span style="font-size: 18px;"><strong>Horário da votação</strong></span><br/><span style="font-size: 18px;">A votação estará disponível das 00h às 23h59 do dia 01/12, sem interrupções.</span></p>
<p><span style="font-size: 18px;"><strong>Como acessar a votação?</strong></span><br/><span style="font-size: 18px;">O voto será exclusivamente eletrônico, pelo site: <a href="https://voteanpprevsinproprev.com.br/#/home">voteanpprevsinproprev.com.br</a></span><br/><span style="font-size: 18px;">O acesso se dará mediante CPF + senha específica para as eleições.</span></p>
<p><span style="font-size: 18px;"><strong>Não tenho minha senha de votação</strong></span><br/><span style="font-size: 18px;">Se você <strong>não recebeu a carta</strong> com a senha, poderá <strong>criar uma nova senha diretamente no site.</strong></span><br/><span style="font-size: 18px;">Na página inicial, selecione a opção: “Não tenho minha senha de votação”</span><br/><span style="font-size: 18px;">A cada nova senha gerada, todas as senhas anteriores são automaticamente invalidadas.</span></p>
<p><span style="font-size: 18px;"><strong>Já tenho senha, mas quero trocar</strong></span><br/><span style="font-size: 18px;">O(a) associado(a) que já recebeu a senha e deseja alterá-la deve acessar a página inicial do site e escolher a opção: “Trocar minha senha”</span><br/><span style="font-size: 18px;">Da mesma forma, a criação de uma nova senha invalida as anteriores.</span></p>
<p><span style="font-size: 18px;"><strong>Dados que constam no site de votação estão desatualizados?</strong></span><br/><span style="font-size: 18px;">O envio do link para criação de nova senha é feito para o e-mail ou número de celular cadastrados junto à ANPPREV. Caso essas informações estejam desatualizadas, o(a) associado(a) poderá solicitar a atualização diretamente pelo e-mail: <a href="mailto:cm.eleitoral2025@gmail.com">cm.eleitoral2025@gmail.com</a></span><br/><span style="font-size: 18px;">A atualização será realizada mediante validação da Comissão Eleitoral.</span></p>
<p><span style="font-size: 18px;"><strong>Participação no pleito</strong></span><br/><span style="font-size: 18px;">Somente associados, servidores ativos e aposentados, em situação regular poderão votar.</span><br/><span style="font-size: 18px;">Para dúvidas sobre situação associati~')
        || TO_CLOB(q'~va ou regularização, contate o Departamento Financeiro pelo whatsapp: <a href="https://anpprev.org.br/anp/core/(61) 98198-8368">(61) 98198-8368</a></span></p>
<p><span style="font-size: 18px;"><strong>Garanta sua participação nesse processo democrático.</strong></span><br/><span style="font-size: 18px;">Verifique seus dados, ajuste o que for necessário e gere sua senha de votação pelo site.</span></p>~')
);

-- Fonte: news/eleicao_sinproprev_despacho_04_2025.php
INSERT INTO WKSP_SINDICATTO.CONTENT
( TENANT_CODE
, CTYPE_CODE
, TITLE
, PUBLISHED_AT
, CONTENTS
)
VALUES
( q'~SINPROPREV~'
, q'~news~'
, q'~ELEIÇÕES SINPROPREV 2025 - DESPACHO COMISSÃO ELEITORAL Nº 004/2025~'
, TO_DATE('2025-09-26 15:00', 'YYYY-MM-DD HH24:MI')
, TO_CLOB(q'~<p><span style="font-size: 18px;"><strong>A Comissão Eleitoral emitiu, nesta terça-feira, 4 de novembro, o Despacho nº 004/2025, deferindo a inscrição da Chapa 01 – "Somos Todos SINPROPREV: Base Forte, Futuro Sólido”, referente ao Conselho Fiscal do SINPROPREV.</strong></span></p>
<p><span style="font-size: 18px;"><strong>Documentos publicados:</strong></span></p>
<ul>
<li><span style="font-size: 18px;"><strong>Despacho da Comissão Eleitoral — <a href="https://sinproprev.org.br/file/20251105133644_despacho_004_2025_chapa_sinproprev_cf_assinado-2.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<ul>
<li><span style="font-size: 18px;"><strong>Certidão da Secretaria da Comissão Eleitoral — <a href="https://sinproprev.org.br/file/20251105133807_001_2025_certidAo-secretaria-comissAo-eleitoral-sinproprev_cf_assinado.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<ul>
<li><span style="font-size: 18px;"><strong>Confira os integrantes da Chapa — <a href="https://sinproprev.org.br/file/20251105133918_anpprev-e-sinproprev_sinproprev_cf.pdf" target="_blank">Clique aqui.</a></strong></span></li>
</ul>
<p> </p>
<p><span style="font-size: 18px;"><strong>Os documentos completos permanecem arquivados na Secretaria da Comissão Eleitoral, onde poderão ser consultados pelos(as) associados(as), mediante requisição formal, em conformidade com a LGPD.</strong></span></p>~')
);

COMMIT;

