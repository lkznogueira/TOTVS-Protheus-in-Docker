#! /bin/bash

docker run -d --name totvs_appserver --network totvs -p 1234:1234 -p 12345:12345 -p 8088:8088 --ulimit nofile=65536:65536 juliansantosinfo/totvs_appserver:latest