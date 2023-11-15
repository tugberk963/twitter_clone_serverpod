# twitter_clone_serverpod
Flutter Twitter Clone with BLoC pattern using Serverpod & Docker, PostgreSQL

* Setting up the Serverpod 

> serverpod create <your_project_name>

* Starting your project server with Docker

> cd project_name/project_name_server

> docker compose up --build --detach

> dart bin/main.dart

* For the database passwords 
> cat project_name/project_name_server/config/passwords.yaml

* For database connection infos
> cat project_name/project_name_server/config/development.yaml

 * You need to change your admin pass with yours in able to connect database in pqAdmin - development one -

General UI 

![](https://github.com/tugberk963/twitter_clone_serverpod/blob/tugberk/twitter_clone_flutter/twitterclone.gif)
