#!/bin/bash

# Указываем директорию, в которой нужно выполнить git pull
REPO_DIR="/home/ilkey/my_site"

# Название сервиса, который нужно перезапустить
SERVICE_NAME="apache2"

# Переходим в директорию с репозиторием
cd "$REPO_DIR" || exit 1


# Выполняем git pull
git pull

# Если git pull выполнен успешно, перезапускаем сервис
if [ $? -eq 0 ]; then
  sudo systemctl restart "$SERVICE_NAME"
fi
