#! /bin/bash

docker run -d --name totvs_dbaccess --network totvs -p 7890:7890 -p 7891:7891 juliansantosinfo/totvs_dbaccess:latest