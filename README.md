# adminer-docker-dracula

[Docker image](https://hub.docker.com/r/bergalath/adminer-dracula) for [Adminer](https://github.com/vrana/adminer) with [dracula theme](https://github.com/dracula/adminer), waiting for https://github.com/vrana/adminer/pull/394

## How to use it

**in terminal :**

    make up

open your browser : http://localhost:8080 (`username: postgres / password: password`)

**in docker-compose file :** (see [./docker-compose.yml](docker-compose.yml))

    adminer:
      image: bergalath/adminer-dracula:4.7.9
      restart: unless-stopped
      ports:
        - 8080:8080
      environment:
        - ADMINER_DESIGN=dracula

## How to build and push the image to [Docker Hub](https://hub.docker.com/r/bergalath/adminer-dracula)

Build the image

    make build

Have a look at it

    make test

Then push it

    make push
