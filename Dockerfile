# syntax=docker/dockerfile:1

# docker run -d --name go-basics -v $PWD:/go/src/app golang:1.17
# docker run -ti -d --name go-basics -v $PWD:/go/src/app golang:1.17 bash 
# docker exec -it go-basics /bin/bash

# Working:
# docker run -d --name mirrorFinder -p 8080:8080 -v "%CD%":/app mirrorfinder /bin/sh

FROM golang:1.17

WORKDIR /app

COPY * .

EXPOSE 8080

CMD [ "/bin/sh" ]
