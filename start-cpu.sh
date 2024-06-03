#!/bin/bash
docker compose -f ./docker/docker-compose.yml up -d
docker compose -f ./docker/docker-compose.yml exec base sh
