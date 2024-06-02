#!/bin/bash
docker compose -f ./docker/docker-compose.yml exec base sh ./src/setup.sh
