docker run -d \
-p 5432:5432 \
--name postgres \
-e POSTGRES_USER=root \
-e POSTGRES_PASSWORD=helloworld \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-v $PWD/data:/var/lib/postgresql/data \
postgres


