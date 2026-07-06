prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_imp.id(7889730659527882)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>41722960723206
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2685139291095829)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'&G_ETYPE_NAME.'
,p_list_item_link_target=>'f?p=&APP_ID.:9998:&SESSION.::&DEBUG.::::'
,p_list_text_02=>'nav-bar-etype-name'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7901889200527932)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&G_ENTITY_NAME.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_icon_alt_attribute=>'&APP_USER.'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7902376406527934)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7901889200527932)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7902717115527935)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7901889200527932)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
