#!/bin/bash
docker compose \
    -f ./docker/docker-compose.yml \
    -f ./docker/docker-compose-gpu.yml \
    build
docker compose \
    -f ./docker/docker-compose.yml \
    -f ./docker/docker-compose-gpu.yml \
    start
docker compose \
    -f ./docker/docker-compose.yml \
    -f ./docker/docker-compose-gpu.yml \
    exec base sh /setup.sh
