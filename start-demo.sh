#!/bin/bash

# docker-compose文件目录
# DOCKER_COMPOSE_FILE=docker-compose.yml
# DOCKER_COMPOSE_FILE=mysql-redis-docker-compose.yml
DOCKER_COMPOSE_FILE=rocketmq-docker-compose.yml

# 生成镜像
# docker-compose build --no-cache
# 启动docker-compose
docker-compose up -d