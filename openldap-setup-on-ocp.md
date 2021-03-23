To setup a pod with openldap, execute `oc new-app openshift/openldap-2441-centos7` on a project

Then, go to the openldap container terminal and execute the following command to create the users and roles

```
cd /tmp && vi test.ldif
# Then, copy the contents from bootstrap.ldf into this file test/ldif

ldapadd -x -h localhost -p 389 -D cn=Manager,dc=example,dc=com -w admin -f test.ldif 
```

Check if the users and roles have been created successfully

```
ldapsearch -x -LLL -h localhost -p 389 -b dc=example,dc=com 
```
