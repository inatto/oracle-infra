SELECT * FROM dba_network_acls
;



BEGIN

    -- deve executar no console oracle cloud database
    dbms_network_acl_admin.append_host_ace(
            host => 'app.sindicatto.com',
            ace => xs$ace_type(
                    privilege_list => xs$name_list('connect'),
                    principal_name => 'WKSP_SINDICATTO',
                    principal_type => xs_acl.ptype_db));
END;
/

-- BEGIN
--     PRC_CREATE_USER('email233', 'email223@user.com', '123456');
-- END;
/
SELECT object_name, status
  FROM dba_objects
 WHERE object_name = 'DBMS_NETWORK_ACL_ADMIN';
