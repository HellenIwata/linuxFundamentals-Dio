#!/bin/bash

#Script de criação de estrutura de usuários, diretórios e permissões

echo "-----            Criando diretórios            -----"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "----- Finalizado! Os diretórios foram criados. -----"

echo " "

echo "-----          Criando os grupos          -----"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "----- Finalizado! Os grupos foram criados. -----"

echo " "

echo "----- Criando usuários e direcionando aos grupos -----"

        echo "Usuários do grupo GRP_ADM"
        useradd carlos -m -s /bin/bash -p $(openssl passwd Administracao@123) -G GRP_ADM
        useradd maria -m -s /bin/bash -p $(openssl passwd Administracao@123) -G GRP_ADM
        useradd joao -m -s /bin/bash -p $(openssl passwd Administracao@123) -G GRP_ADM
        echo "Usuários criados"
echo" "
        echo "Usuários do grupo GRP_VEN"
        useradd debora -m -s /bin/bash -p $(openssl passwd Vendas@123) -G GRP_VEN
        useradd sebastiana -m -s /bin/bash -p $(openssl passwd Vendas@123) -G GRP_VEN
        useradd roberto -m -s /bin/bash -p $(openssl passwd Vendas@123) -G GRP_VEN
        echo "Usuários criados"
echo " "
        echo "Usuários do grupo GRP_SEC"
        useradd josefina -m -s /bin/bash -p $(openssl passwd Secretariado@123) -G GRP_SEC
        useradd amanda -m -s /bin/bash -p $(openssl passwd Secretariado@123) -G GRP_SEC
        useradd rogerio -m -s /bin/bash -p $(openssl passwd Secretariado@123) -G GRP_SEC
        echo "Usuários criados"

echo "----- Todos os usuários foram criados e direcionados -----"

echo " "

echo "----- Direcionando permissões aos diretórios -----"

        echo "---- Definindo o dono dos diretórios ----"
        chown root:GRP_ADM /adm
        chown root:GRP_VEN /ven
        chown root:GRP_SEC /sec
        echo "----   Finalizado! O dono definido    ----"
echo " "
        echo "----      Definindo as permissões     ----"
        chmod 777 /publico
        chmod 770 /adm
        chmod 770 /ven
        chmod 770 /sec
        echo "---- Finalizado! As permissões definida ----"

echo "-----  Todas as permissões foram direcionadas!  -----"

echo " "

echo "Script finalizado, todas as informações foram criadas"
