NAME=mysqldb
docker kill ${NAME}
docker rm ${NAME}
docker run -d -p 3306:3306  --name ${NAME} -v mysql-data:/var/lib/mysql alfonsodomenici/mysql
