docker run -d -p 8080:3000 --name wiki --restart unless-stopped -e "DB_TYPE=mysql" -e "DB_HOST=127.0.0.1" -e "DB_PORT=3306" -e "DB_USER=root" -e "DB_PASS=helloworld" -e "DB_NAME=wiki" ghcr.io/requarks/wiki:2