# adminer-docker-dracula

[Docker image](https://hub.docker.com/r/bergalath/adminer-dracula) for [Adminer](https://github.com/vrana/adminer) with [dracula theme](https://github.com/dracula/adminer) and [some fixes](https://github.com/bergalath/dracula-adminer-theme)

## How to use it

**in terminal :**

    make up

open your browser : http://localhost:8080 (`username: postgres / password: password`)

**in docker-compose file :** (see [./docker-compose.yml](docker-compose.yml))

    adminer:
      image: bergalath/adminer-dracula:4.8.0-1
      restart: unless-stopped
      ports:
        - 8080:8080
      environment:
        - ADMINER_DESIGN=dracula

## How to update, build and push the image to [Docker Hub](https://hub.docker.com/r/bergalath/adminer-dracula)

1. Update the version

    sed -i 's/4.6.5/4.6.6/' *

1. Build the image

    make build

1. Have a look at it

    make test

1. Then push it

    make push
