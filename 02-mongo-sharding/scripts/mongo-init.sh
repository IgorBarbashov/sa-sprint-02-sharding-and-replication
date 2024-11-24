#!/bin/bash

# Инициализируем сервер конфигурации кластера MongoDB
docker exec configSrv_1 sh -c "mongosh < ./scripts/init_configSrv.js --port 27019"

# Инициализируем шард 1
docker exec shard_1 sh -c "mongosh < ./scripts/init_shard_1.js --port 27018"

# Инициализируем шард 2
docker exec shard_2 sh -c "mongosh < ./scripts/init_shard_2.js --port 27018"

# Нужно дождаться пока сервер конфигурации и шарды выберут себе Primary
echo "Waiting for ConfigServer and Shards determine theirs Primary instances..."
sleep 20

# Инициализируем роутер, включаем шардинг, наполняем БД
docker exec mongos_router_1 sh -c "mongosh < ./scripts/init_router.js"
