ARG REPO_LOCATION=docker.io/
FROM ${REPO_LOCATION}osixia/openldap
ENV LDAP_ORGANISATION="Test Org"      LDAP_DOMAIN="shihadeh.intern"
COPY bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif
