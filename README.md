# adminer-dracula

[Adminer](https://github.com/vrana/adminer) with [dracula theme](https://github.com/dracula/adminer), waiting for https://github.com/vrana/adminer/pull/394

Docker image available at https://hub.docker.com/r/bergalath/adminer-dracula

### How to use it

in terminal :

    env ADMINER_DESIGN=dracula docker run --rm bergalath/adminer-dracula:latest

in docker-compose file :

    adminer:
      image: bergalath/adminer-dracula
      restart: unless-stopped
      ports:
        - 8080:8080
      environment:
        - ADMINER_DESIGN=dracula

### How to build and push the image to [Docker Hub](https://hub.docker.com/r/bergalath/adminer-dracula)

Build the image

    make build

Have a look at it

    make test

Then push it

    make push
