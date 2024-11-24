#!/bin/bash

echo "Flush cache"
docker exec redis_1 sh -c "redis-cli flushall"

echo "
First request - response from DB"
curl -s -w 'Total time:\t%{time_total}\n\n' -o /dev/nul "http://localhost:8080/helloDoc/users"

echo "Second response - cached response"
curl -s -w 'Total time:\t%{time_total}\n\n' -o /dev/nul "http://localhost:8080/helloDoc/users"

echo "Third request - cached response"
curl -s -w 'Total time:\t%{time_total}\n\n' -o /dev/nul "http://localhost:8080/helloDoc/users"

echo "Flush cache"
docker exec redis_1 sh -c "redis-cli flushall"

echo "
Fourth request - response from DB"
curl -s -w 'Total time:\t%{time_total}\n\n' -o /dev/nul "http://localhost:8080/helloDoc/users"

echo "Fifth request - cached response"
curl -s -w 'Total time:\t%{time_total}' -o /dev/nul "http://localhost:8080/helloDoc/users"