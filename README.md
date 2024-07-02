# Dockerização do ERP TOTVS Protheus

## Overview

Este repositório contém a implementação da aplicação do ERP TOTVS Protheus utilizando containers Docker.

O sistema de ERP Protheus é uma solução de software complexa que requer configurações e dependências específicas para funcionar. Este projeto visa simplificar a instalação, configuração e execução do Protheus ao containerizar-o utilizando Docker.

### Componentes

Este repositório contém três principais componentes:

1. **appserver**: O servidor de aplicação principal do sistema ERP Protheus.
2. **dbaccess**: Um serviço que fornece acesso ao banco de dados.
3. **licenseserver**: Um serviço que gerencia licenças para o sistema ERP Protheus.

### Início Rápido

Para começar com este projeto, siga os passos abaixo:

1. Clone este repositório: `git clone https://github.com/your-username/protheus-dockerization.git`
2. Inicie os containers: `docker-compose up -d`
3. Acesse a aplicação Protheus: `http://localhost:12345` (Smartclient Web)

### Build local

Caso queira contruir as imagens localmente

1. acesse o diretorio appserver e execute o script `build.sh`
2. acesse o diretorio dbaccess e execute o script `build.sh`
3. acesse o diretorio licenseserver e execute o script `build.sh`
4. Retorne ao diretório raiz do projeto, onde esta localizado o arquivo docker-compose.yaml
5. Inicie os containers: `docker-compose up -d`

### Configuração

A configuração para cada componente está armazenada em arquivos separados:

* `appserver/Dockerfile`: Contém as instruções para construir a imagem do appserver.
* `dbaccess/Dockerfile`: Contém as instruções para construir a imagem do dbaccess.
* `licenseserver/Dockerfile`: Contém as instruções para construir a imagem do licenseserver.
O arquivo `docker-compose.yml` orquestra os containers e define as variáveis de ambiente, portas e volumes necessários por componente.

### Desenvolvimento Futuro

Alguns desenvolvimentos futuros potenciais para este projeto incluem:

* Implementar testes automatizados utilizando um framework como Pytest ou Unittest.
* Configurar balanceamento de carga e escalabilidade para o componente appserver.
* Explorar a utilização do Kubernetes para gerenciar os containers em produção.

### Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo `LICENSE` para detalhes.

### Contribuindo

Se você gostaria de contribuir para este projeto, por favor, forque-o e envie uma solicitação de pull com suas alterações.
