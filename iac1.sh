#!/bin/bash

echo "-----------------------------"
echo "1° - CRIANDO OS DIRETÓRIOS..."
echo "-----------------------------"
echo ""

mkdir publico adm ven sec

echo "-------------------------"
echo "2° - CRIANDO OS GRUPOS..."
echo "-------------------------"
echo ""

echo "-------"
echo "GRP_ADM"
echo "-------"
echo ""

groupadd GRP_ADM

echo "-------"
echo "GRP_VEN"
echo "-------"
echo ""

groupadd GRP_VEN

echo "-------"
echo "GRP_SEC"
echo "-------"
echo ""

groupadd GRP_SEC

echo "---------------------------------------------------------------------"
echo "3° - CRIANDO USUÁRIOS E ADICIONANDO-OS AOS SEUS RESPECTIVOS GRUPOS..."
echo "---------------------------------------------------------------------"
echo ""

echo "---------------------"
echo "USUÁRIOS DO 'GRP_ADM'"
echo "---------------------"
echo ""

useradd carlos -mc "Carlos da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -mc "Maria Clara" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -mc "João Andrade" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "---------------------"
echo "USUÁRIOS DO 'GRP_VEN'"
echo "---------------------"
echo ""

useradd debora -mc "Débora Oliveira" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -mc "Sebastiana Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -mc "Roberto Barbosa" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "---------------------"
echo "USUÁRIOS DO 'GRP_SEC'"
echo "---------------------"
echo ""

useradd josefina -mc "Josefina Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -mc "Amanda Amorin" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -mc "Rogério Prado" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "------------------------------------------------------------------------"
echo "4° - DANDO PERMISSÃO TOTAL A TODOS OS USUÁRIOS AO DIRETÓRIO 'PUBLICO'..."
echo "------------------------------------------------------------------------"
echo ""

chmod 777 publico/

echo "------------------------------------------------"
echo "5° - ALTERANDO O GRUPO DOS DIRETÓRIOS CRIADOS..."
echo "------------------------------------------------"
echo ""

echo "---------------"
echo "DIRETÓRIO 'ADM'"
echo "---------------"
echo ""

chown root:GRP_ADM adm/

echo "---------------"
echo "DIRETÓRIO 'VEN'"
echo "---------------"
echo ""

chown root:GRP_VEN ven/

echo "---------------"
echo "DIRETÓRIO 'SEC'"
echo "---------------"
echo ""

chown root:GRP_SEC sec/

echo "FINALIZANDO..."
echo "FIM!!!"





