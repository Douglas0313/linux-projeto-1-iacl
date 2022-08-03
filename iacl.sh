#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM
useradd ariane -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM

useradd joao -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN
useradd wesley -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN
useradd wilson -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN

useradd carlos -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC
useradd mia -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC

echo "ESpecificando permissões dos diretórios..."

chown root: GRP_ADM /adm
chown root: GRP_ven /ven
chown root: GRP_SEC /sec

chmod 770 /mod
chmod 770 /ven
chmod 770 /sec
chmod 777/publico

echo "Fim…"

