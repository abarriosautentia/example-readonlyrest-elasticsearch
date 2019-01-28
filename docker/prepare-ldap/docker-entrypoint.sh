#!/bin/bash

ldapadd -x -D "cn=admin,dc=adictosaltrabajo,dc=com" -w autentia -H ldap://readonlyrest-ldap:389 -f /tmp/users.ldif
ldapadd -x -D "cn=admin,dc=adictosaltrabajo,dc=com" -w autentia -H ldap://readonlyrest-ldap:389 -f /tmp/groups.ldif

ldappasswd -x -D "cn=admin,dc=adictosaltrabajo,dc=com" -w autentia -H ldap://readonlyrest-ldap:389 -s usuario1 "uid=usuario1,ou=Usuarios,dc=adictosaltrabajo,dc=com"
ldappasswd -x -D "cn=admin,dc=adictosaltrabajo,dc=com" -w autentia -H ldap://readonlyrest-ldap:389 -s usuario2 "uid=usuario2,ou=Usuarios,dc=adictosaltrabajo,dc=com"
ldappasswd -x -D "cn=admin,dc=adictosaltrabajo,dc=com" -w autentia -H ldap://readonlyrest-ldap:389 -s usuario3 "uid=usuario3,ou=Usuarios,dc=adictosaltrabajo,dc=com"
