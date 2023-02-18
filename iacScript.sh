#!/bin/bash

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários com senha padrao e grupo atribuido."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 "Senha123") -G GRP_SEC

echo "Criando a estrutura de pastas passando a definicao de permissao."

mkdir /publico -m 777
mkdir /adm -m 770
mkdir /ven -m 770
mkdir /sec -m 770

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Finalizado."
