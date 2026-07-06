prompt --application/shared_components/logic/application_items/g_cpf_hash
begin
--   Manifest
--     APPLICATION ITEM: G_CPF_HASH
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(11693907194517)
,p_name=>'G_CPF_HASH'
,p_protection_level=>'I'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'legado, exemplo',
'',
'SHA1(CONCAT(''asaclub'', p.cpf))'))
,p_version_scn=>41721581432724
);
wwv_flow_imp.component_end;
end;
/
