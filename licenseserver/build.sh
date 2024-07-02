#! /bin/bash

# Cria uma variável booleana para controlar se o diretório existe ou foi extraído
resources_exists=false

# Verifica se o diretório totvs existe
if [ -d ./totvs ]; then
  # Define a variável como true
  resources_exists=true
else

  # Se não existir, verifica se o arquivo totvs.tar.gzaa existe
  if [ -f ./totvs.tar.gzaa ]; then

    # Se existir, junta as partes do arquivo tar
    cat totvs.tar.gza* > totvs.tar.gz

    # Extrai o arquivo tar
    tar -xzvf totvs.tar.gz

    # Define a variável como true
    resources_exists=true
  fi
fi

# Verifica o valor da variável booleana
if [ $resources_exists = true ]; then
  # Se o diretório existe ou foi extraído, executa o comando docker build
  docker build -t juliansantosinfo/totvs_licenseserver .
else
  # Se o diretório não existe e não foi extraído, exibe uma mensagem de erro
  echo "O diretório totvs não existe e o arquivo totvs.tar.gzaa não foi encontrado."
fi

rm -rf totvs.tar.gz