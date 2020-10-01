# docker


1. RUN: docker-compose build
2. REPLACE: config/database.yml with database_yml_replace/database.yml
3. RUN: docker-compose up
4. RUN: docker-compose run web rake db:create
