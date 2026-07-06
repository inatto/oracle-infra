prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7888545347527874)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>47036051273049
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(67718865060521241)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Admin'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return has_permission(''access_menu'', ''list-entry-admin'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53018262583034266)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'E-mails'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'    p_action_code => ''access_page''',
'    ,p_page_alias => ''email-table-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(67718865060521241)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(67701986833471392)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Todos os membros'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'    p_action_code => ''access_page''',
'    ,p_page_alias => ''all-members-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(67718865060521241)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8118017641679801)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'--Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_disp_cond_type=>'NEVER'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Cadastros &G_TENANT_CODE.'
,p_list_item_icon=>'fa-solid fa-users'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN has_permission(''access_menu'', ''list-entry-cadastros'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1029649119773714)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'--Cadastros parceiros'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'    p_action_code => ''access_page''',
'    ,p_page_alias => ''partner-members-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11954430897112880)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Administradores'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:4243946697:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission',
'    (p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''admin'');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11954744086116241)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Analistas de conv\00EAnios')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:1625948615:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission',
'    (p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''agreement_analyst'');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11944535000042252)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Associados'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:2219228742:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''associate''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11955083070125190)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Atendentes'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:2383226250:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''customer_support''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11956257060134620)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Atendentes Sala VIP'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:2521070590:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''vip_lounge_service''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11955365311127502)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Funcion\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:789397422:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''staff''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11005475274020042)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Clientes'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:3599908120:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''client''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11955616165129404)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>unistr('Funcion\00E1rios (s\00F3 leitura)')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:825389708:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''staff_view''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11955907261131764)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Marketing'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:3440454788:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''marketing''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2138383978607391)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Financeiro'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:4215656332:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''financial''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2139228584618499)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Diretores'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:2323806105:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''director''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68845655236589576)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>unistr('Jur\00EDdico')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6ETH:3626564121:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''members-page''',
'    ,p_target_etype_code => ''juridico''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(11898823060270196)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2298142446255171)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Jur\00EDdico')
,p_list_item_icon=>'fa-solid fa-gavel'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN has_permission(''view_menu'', ''list-entry-juridico'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2299872579459884)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Processos'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(2298142446255171)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2240154843141535)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Autores do processo'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(2298142446255171)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68818056301212906)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Marketing'
,p_list_item_icon=>'fa-bullhorn'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN has_permission(''view_menu'', ''list-entry-marketing'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10342816750531198)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Campanhas de e-mail'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'    p_action_code => ''access_page''',
'    ,p_page_alias => ''email-campaign-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(68818056301212906)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12809978929519145)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Relat\00F3rio de envios')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'    p_action_code => ''access_page''',
'    ,p_page_alias => ''email-delivery-report-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(68818056301212906)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68819049124226464)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>unistr('Conte\00FAdo')
,p_list_item_icon=>'fa-newspaper-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN has_permission(''view_menu'', ''list-entry-content'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66911599616851518)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Conte\00FAdos')
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission',
'    (p_action_code => ''access_page''',
'    ,p_page_alias => ''contents-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(68819049124226464)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27,28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68819531847236631)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Vouchers'
,p_list_item_icon=>'fa-ticket'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN has_permission(''view_menu'', ''list-entry-vouchers'');'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13256711512642987)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Cancelar voucher'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return has_permission(',
'     p_action_code => ''access_page''',
'    ,p_page_alias => ''cancel-voucher-page''',
');',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(68819531847236631)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp.component_end;
end;
/
