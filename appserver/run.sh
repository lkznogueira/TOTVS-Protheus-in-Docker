#! /bin/bash

docker run \
--rm \
---ulimit nofile=65536:65536 \
-p 1234:1234 \
-p 12345:12345 \
juliansantosinfo/totvs_appserver