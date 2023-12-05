docker run -d \
-p 5432:5432 \
--name postgres-test \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=helloworld \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-v $PWD/data:/var/lib/postgresql/data \
postgres


