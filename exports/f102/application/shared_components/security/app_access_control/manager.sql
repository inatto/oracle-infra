prompt --application/shared_components/security/app_access_control/manager
begin
--   Manifest
--     ACL ROLE: Manager
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(13468095729492674)
,p_static_id=>'MANAGER'
,p_name=>'Manager'
,p_version_scn=>41721383726842
);
wwv_flow_imp.component_end;
end;
/
