#!/bin/bash 

docker build -t myapp .

docker run -p 9090:80 --mount type=bind,source="$(pwd)/src",target=/app/src myapp