#### To host openldap on OpenShift, create a project and execute 
```
oc new-app openshift/openldap-2441-centos7
```

#### Then, go to the newly created openldap pod/container terminal and execute the following commands to create the users and roles

```
cd /tmp && vi test.ldif
# Then, copy the contents from bootstrap.ldf into this file test/ldif

ldapadd -x -h localhost -p 389 -D cn=Manager,dc=example,dc=com -w admin -f test.ldif 
```

#### Check if the users and roles have been created successfully on openldap

```
ldapsearch -x -LLL -h localhost -p 389 -b dc=example,dc=com 
```
#### User the user maintainer which is mapped to the group Maintaners to login to the BC/KIE setup using the kieapp CRD defined [here](https://github.com/bbalakriz/rhpam-openshift/blob/main/kie-app-yaml/kieapp-rhpam-authoring-with-openldap.yaml)
