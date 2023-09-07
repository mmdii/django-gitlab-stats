# django-gitlab-stats
This repo uses gitlab APIs to get all gitlab stats

## Getting started

How To start project: version 1.0.1
- rename ``sample.env`` to ``.env`` and change environment values to project needs
- run ``docker-compose up -d`` to start containers
- run ``docker-compose exec python bash `` this command let you connect to development by service name container in this case ``python`` is service name
- run ``pipenv lock`` if there is no lock file in project root directory
- in the case of having lock file run ``pipenc sync -d`` to install packages
- run ``pipenv shell`` to activate virtual environment 
- run ``./manage.py migrate`` or ``pipenv run migrate`` to migrate
- run ``./manage.py runserver 0:8000`` to ``pipenv run start`` to run server
- go to ``http://localhost:8000/swagger``
  
Connect to database with pgadmin
- go to ``http://localhost:4000``
- enter username, password of pgadmin
- click on ``Add New Server``
- enter the name of database in General tab the go to Connection tab for host enter postgres container name in this case ``postgres`` then enter database username and password then click on save

Connect to database with command line
- in terminal go to project directory 
- run ``docker-compose exec postgres bash``
- run ``psql -U db_username`` 

