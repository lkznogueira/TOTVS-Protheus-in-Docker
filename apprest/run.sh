#! /bin/bash

docker run --rm --name totvs_apprest --network custom_totvs -p 1235:1235 -p 12355:12355 -p 8080:8080 --ulimit nofile=65536:65536 juliansantosinfo/totvs_apprest:latest