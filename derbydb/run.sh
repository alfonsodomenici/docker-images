NAME=derbydb
docker kill ${NAME}
docker rm ${NAME}
docker run -d -p 1527:1527  --name ${NAME} -v derby-data:/dbs alfonsodomenici/derbydb
