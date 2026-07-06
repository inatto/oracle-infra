prompt --application/shared_components/security/authorizations/has_page_access_permission_20260704_2341
begin
--   Manifest
--     SECURITY SCHEME: Has Page Access Permission 20260704-2341
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(68741316634876544)
,p_name=>'Has Page Access Permission 20260704-2341'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return has_permission(''access_page'');'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>47036013659545
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
