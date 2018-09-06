FROM alfonsodomenici/wildfly

ADD customization ${WILDFLY_HOME}/customization/
ADD modules ${WILDFLY_HOME}/modules/

RUN ${WILDFLY_HOME}/customization/execute.sh

