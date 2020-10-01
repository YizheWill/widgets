docker-compose run web rails new . --force --no-deps --database=postgresql
docker-compose build
rm config/database.yml
cp database.yml config/
docker-compose up
