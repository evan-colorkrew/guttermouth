#!/bin/bash
docker compose -f ./docker/docker-compose.yml -f ./docker/docker-compose-gpu.yml build
docker compose -f ./docker/docker-compose.yml -f ./docker/docker-compose-gpu.yml run base sh ./src/setup.sh
