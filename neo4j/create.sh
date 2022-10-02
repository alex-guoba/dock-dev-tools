docker run -d --name neo4j-server\
	-p 7474:7474 -p 7687:7687 \
	-v $PWD/data:/data \
	-v $PWD/logs:/logs \
	-v $PWD/conf:/var/lib/neo4j/conf \
	-v $PWD/import:/var/lib/neo4j/import \
	--env NEO4J_AUTH=neo4j/helloworld \
	neo4j 
