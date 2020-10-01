docker-compose down
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker system prune -f
cd ../..
rm -rf Docker
git clone https://github.com/YizheWill/Docker.git
