#!/bin/bash
nvidia-ctk runtime configure --runtime=docker --add-opt="--gpus all"
docker compose -f ./docker/docker-compose.yml up -d
docker compose -f ./docker/docker-compose.yml exec base sh
