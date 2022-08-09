#!/bin/bash

echo "1° - CRIANDO OS DIRETÓRIOS..."

mkdir publico adm ven sec

echo "CONFIRME A CRIAÇÃO COM O COMANDO 'ls'"

echo "2° - CRIANDO OS GRUPOS..."

echo "GRP_ADM"

groupadd GRP_ADM

echo "GRP_VEN"

groupadd GRP_VEN

echo "GRP_SEC"

groupadd GRP_SEC

echo "CONFIRME A CRIAÇÃO COM O COMANDO 'cat /etc/group'"

echo "3° - CRIANDO USUÁRIOS E ADICIONANDO-OS AOS SEUS RESPECTIVOS GRUPOS..."

echo "USUÁRIOS DO 'GRP_ADM'"

useradd carlos -mc "Carlos da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -mc "Maria Clara" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -mc "João Andrade" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "USUÁRIOS DO 'GRP_VEN'"

useradd debora -mc "Débora Oliveira" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -mc "Sebastiana Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -mc "Roberto Barbosa" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "USUÁRIOS DO 'GRP_SEC'"

useradd josefina -mc "Josefina Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -mc "Amanda Amorin" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -mc "Rogério Prado" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "CONFIRME SE TUDO OCORREU BEM COM O COMANDO 'cat /etc/group'"

echo "4° - DANDO PERMISSÃO TOTAL A TODOS OS USUÁRIOS AO DIRETÓRIO 'PUBLICO'..."

chmod 777 publico/

echo "5° - ALTERANDO O GRUPO DOS DIRETÓRIOS CRIADOS..."

echo "DIRETÓRIO 'ADM'"

chown root:GRP_ADM adm/

echo "DIRETÓRIO 'VEN'"

chown root:GRP_VEN ven/

echo "DIRETÓRIO 'SEC'"

chown root:GRP_SEC sec/

echo "CONFIRME COM O COMANDO 'ls -l'"

echo "FINALIZANDO..."
echo "FIM!!!"





