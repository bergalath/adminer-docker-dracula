# adminer-docker-dracula

[Docker image](https://hub.docker.com/r/bergalath/adminer-dracula) for [Adminer](https://github.com/vrana/adminer) with [dracula theme](https://github.com/dracula/adminer), waiting for https://github.com/vrana/adminer/pull/394

### How to use it

in terminal :

    docker run --rm -e ADMINER_DESIGN=dracula -p 8080:8080 bergalath/adminer-dracula:4.7.8

or

    make run

in docker-compose file :

    adminer:
      image: bergalath/adminer-dracula:4.7.8
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
