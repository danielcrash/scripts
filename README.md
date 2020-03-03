# Script para efetuar Dump e restore do Banco de Dados.

Script feito para efetuar um dump do banco de dados de produção e restaurar o mesmo em homolog.

### Pré-requisitos
O script foi feito para rodar em sistema linux e o mesmo vai estar disponível no repositório dentro da pasta ```script```. Primeiro será necessário criar um arquivo ```variables.sh``` dentro do diretório ```script``` setando as seguintes variáveis de ambiente:
##
```

!/bin/bash

● export prod_psw='PASSWORD_DE_PRODUÇÃO'

● export prod_host=HOST_DE_PRODUÇÃO

● export hmg_psw='PASSWORD_DE_HOMOLOG'

● export hmg_host=HOST_DE_HOMOLOG

```

Após esse processo, basta abrir o terminal e executar o comando: 
##

```make restore```





















