prompt --application/shared_components/logic/application_items/g_etype_code
begin
--   Manifest
--     APPLICATION ITEM: G_ETYPE_CODE
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
 p_id=>wwv_flow_imp.id(68737362789736135)
,p_name=>'G_ETYPE_CODE'
,p_protection_level=>'I'
,p_version_scn=>47035952413904
);
wwv_flow_imp.component_end;
end;
/
