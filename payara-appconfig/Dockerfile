FROM alfonsodomenici/payara-config
MAINTAINER Alfonso Domenici alfonsodomenici.it
RUN echo ${DOMAIN_NAME}
ENV MINIMUM 1
ENV MAX_POOL_SIZE 2
ENV MAX_WAIT 10
ENV DB_PORT 1527
ENV DB_NAME sample
ENV DB_USER app
ENV DB_PASSWORD app
RUN asadmin start-domain ${DOMAIN_NAME} && \
	asadmin create-jdbc-connection-pool --steadypoolsize ${MINIMUM} --maxwait ${MAX_WAIT} --maxpoolsize ${MAX_POOL_SIZE} --datasourceclassname org.apache.derby.jdbc.ClientDataSource --restype javax.sql.DataSource --property PortNumber=${DB_PORT}:Password=${DB_PASSWORD}:User=${DB_USER}:ServerName=192.168.99.100:DatabaseName=${DB_NAME}:connectionAttributes=\;create\\=true dbpool && \
	asadmin create-jdbc-resource --port 4848 --connectionpoolid dbpool jdbc/dbpool && \
	asadmin ping-connection-pool dbpool && \
    	asadmin stop-domain ${DOMAIN_NAME}
