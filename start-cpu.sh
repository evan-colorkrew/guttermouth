#!/bin/bash
docker compose \
    -f ./docker/docker-compose.yml \
    -f ./docker/docker-compose-entrypoint.yml \
    up -d
docker compose \
    -f ./docker/docker-compose.yml \
    exec base sh
