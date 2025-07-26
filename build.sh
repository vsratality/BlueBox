#!/bin/bash

# Собираем образ агента
docker build -t agent .

# Создаём тома для GitLab и PostgreSQL
docker volume create gitlab-config
docker volume create gitlab-logs
docker volume create gitlab-data
docker volume create postgres-data

# Запускаем сервисы
docker-compose up -d