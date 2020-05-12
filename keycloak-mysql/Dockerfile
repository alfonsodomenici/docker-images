FROM alfonsodomenici/keycloak
MAINTAINER Alfonso Domenici, alfonsodomenici.it

ADD customization ${WILDFLY_HOME}/customization/
ADD modules ${WILDFLY_HOME}/modules/

RUN ${WILDFLY_HOME}/customization/execute.sh
RUN ${WILDFLY_HOME}/bin/add-user-keycloak.sh -r master -u admin -p adminadmin
