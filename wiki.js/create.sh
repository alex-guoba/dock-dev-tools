_dbname="mysql-test"
_dbpass="helloworld"
_dbport="3306"

_dbaddr=`docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" $_dbname`

if [ ! -z "$_dbaddr" -a "$_dbaddr" != " " ]
then
    echo "db container address $_dbaddr"
    docker run -d -p 8080:3000 --name wiki --restart unless-stopped -e "DB_TYPE=mysql" -e "DB_HOST=$_dbaddr" -e "DB_PORT=3306" -e "DB_USER=root" -e "DB_PASS=helloworld" -e "DB_NAME=wiki" ghcr.io/requarks/wiki:2
else
    echo "db container not found!"
    exit 1;
fi

