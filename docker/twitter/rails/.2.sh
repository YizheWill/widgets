docker-compose run web rake db:create
docker system prune -f
docker exec --user="root" -it rails_web_1 zsh
