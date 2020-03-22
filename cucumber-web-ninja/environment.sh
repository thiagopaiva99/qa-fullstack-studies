# Creating network for all the environment
docker network create --driver bridge skynet

# Creating the container for Postgres database
docker run --name pgdb --network=skynet -e "POSTGRES_PASSWORD=qaninja" -p 5432:5432 -v var/lib/postgresql/data -d postgres

# Creating the container to run PgAdmin
docker run --name pgadmin --network=skynet -e "PGADMIN_DEFAULT_EMAIL=root@qaninja.io" -e "PGADMIN_DEFAULT_PASSWORD=qaninja" -p 15432:80 -d dpage/pgadmin4

# Creating the container to run the users api
docker run --name nflix-api-users --network=skynet -e "DATABASE=pgdb" -p 3001:3001 -d papitoio/nflix-api-users

# Creating the container to run the movies api
docker run --name nflix-api-movies --network=skynet -e "DATABASE=pgdb" -p 3002:3002 -d papitoio/nflix-api-movies

# Creating the container to run the api gateway
docker run --name nflix-api-gateway --network=skynet -e "DATABSE=pgdb" -e "API_USERS=http://nflix-api-users:3001" -e "API_MOVIES=http://nflix-api-movies:3002" -p 3000:3000 -d papitoio/nflix-api-gateway

# Creating the container to run the frontend
docker run --name nflix-web --network=skynet -e "VUE_APP=http://0.0.0.0:3000" -p 8080:8080 -d papitoio/nflix-web