FROM alfonsodomenici/payara-config
MAINTAINER Alfonso Domenici alfonsodomenici.it
RUN echo ${DOMAIN_NAME}
ENV SERVER_NAME messages_messagesdb_1
ENV MINIMUM 1
ENV MAX_POOL_SIZE 2
ENV MAX_WAIT 10
ENV DB_PORT 3306
ENV DB_NAME message
ENV DB_USER mysql
ENV DB_PASSWORD mysql
COPY ./mysql-connector-java-5.1.36-bin.jar ${PAYARA_HOME}/lib
RUN asadmin start-domain ${DOMAIN_NAME} && \
	asadmin create-jdbc-connection-pool --steadypoolsize ${MINIMUM} --maxwait ${MAX_WAIT} --maxpoolsize ${MAX_POOL_SIZE} --datasourceclassname com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource --restype javax.sql.DataSource --property PortNumber=${DB_PORT}:Password=${DB_PASSWORD}:User=${DB_USER}:ServerName=${SERVER_NAME}:DatabaseName=${DB_NAME} ${DB_NAME}Pool && \
	asadmin create-jdbc-resource --port 4848 --connectionpoolid ${DB_NAME}Pool jdbc/${DB_NAME} && \
    	asadmin stop-domain ${DOMAIN_NAME}
