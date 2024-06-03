#!/bin/bash
docker compose -f ./docker/docker-compose.yml -f ./docker/docker-compose-gpu.yml start -d
docker compose -f ./docker/docker-compose.yml -f ./docker/docker-compose-gpu.yml exec base sh
