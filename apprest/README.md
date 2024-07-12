# Dockerização do AppServer REST para ERP TOTVS Protheus

## Overview

Este repositório contém a implementação da aplicação AppServer REST para ERP TOTVS Protheus utilizando contêineres Docker.

O sistema de ERP Protheus é uma solução de software complexa que requer configurações e dependências específicas para funcionar. Este projeto visa simplificar a instalação, configuração e execução do Protheus ao containerizar o AppServer utilizando Docker.

### Componentes

Este repositório contém um dos quatro principais componentes:

* **apprest**: O servidor de aplicação REST do sistema ERP Protheus.

Outros contêineres necessários

* **mssql**: Serviço de banco de dados para persistencia dos dados do sistema.
* **licenseserver**: Um serviço que gerencia licenças para o sistema ERP Protheus.
* **dbaccess**: Um serviço que fornece acesso ao banco de dados.
Protheus.
* **appserver**: O servidor de aplicação principal do sistema ERP Protheus.

### Início Rápido

Para começar com este projeto, siga os passos abaixo.

**Importante:** Este container precisa estar na mesma rede que os serviços DBAccess e LicenseServer para funcionar corretamente.

1. Baixe a imagem:

    ```bash
    docker pull juliansantosinfo/totvs_apprest:latest
    ```

2. Criar rede exclusiva para os containeres do projeteto:

    ```bash
    docker network create totvs
    ```

3. Executar o container.

    ```bash
    docker run -d --name totvs_apprest --network totvs -p 1235:1235 -p 12355:12355 -p8089:8089 --ulimit nofile=65536:65536 juliansantosinfo/totvs_apprest:latest
    ```

### Build local

Caso queira construir as imagens localmente

1. Clone o repositório GIT do projeto:

    ```bash
    git clone https://github.com/juliansantosinfo/TOTVS-Protheus-in-Docker.git
    ```

2. acesse o diretório appserver`

    ```bash
    cd apprest
    ```

3. Execute o script `build.sh

    ```bash
    ./build.sh
    ```

### Variáveis de Ambiente

| Variável de Ambiente | Conteúdo Padrão | Descrição |
|---|---|---|
| `APPSERVER_RPO_CUSTOM` | `/totvs/protheus/apo/custom.rpo` | Define o caminho para o arquivo de RPO customizado do AppServer. |
| `APPSERVER_DBACCESS_DATABASE` | `MSSQL` | Define o tipo de banco de dados utilizado (ex: MSSQL, Oracle). |
| `APPSERVER_DBACCESS_SERVER` | `totvs_dbaccess` | Define o nome do host do serviço DBAccess. |
| `APPSERVER_DBACCESS_PORT` | `7890` | Define a porta do serviço DBAccess. |
| `APPSERVER_DBACCESS_ALIAS` | `protheus` | Define o alias para a conexão com o banco de dados. |
| `APPSERVER_CONSOLEFILE` | `/totvs/protheus/bin/appserver/appserver.log` | Define o caminho para o arquivo de log do AppServer. |
| `APPSERVER_MULTIPROTOCOLPORTSECURE` | `0` | Define a porta segura para o protocolo múltiplo (0 desativa a porta segura). |
| `APPSERVER_MULTIPROTOCOLPORT` | `1` | Define a porta para o protocolo múltiplo. |
| `APPSERVER_LICENSE_SERVER` | `totvs_licenseserver` | Define o nome do host do servidor de licenças. |
| `APPSERVER_LICENSE_PORT` | `5555` | Define a porta do servidor de licenças. |
| `APPSERVER_PORT` | `1235` | Define a porta principal do AppServer. |
| `APPSERVER_WEB_PORT` | `12355` | Define a porta para a interface web do AppServer. |
| `APPSERVER_REST_PORT` | `8080` | Define a porta para serviço REST do AppServer. |
| `APPSERVER_WEB_MANAGER` | `8089` | Define a porta para a interface web de gerenciamento do AppServer. |
