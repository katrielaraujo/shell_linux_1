#!/bin/bash

echo "Criando diretórios e grupos"

mkdir /public
chmod 777 /public

groupadd GRP_ADM
mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

groupadd GRP_VEN
mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

groupadd GRP_SEC
mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec

echo "Criando usuários"

useradd -g GRP_ADM carlos -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_ADM maria -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_ADM joao -m -s /bin/bash -p $(openssl passwd 123)

useradd -g GRP_VEN debora -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_VEN sebastiana -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_VEN roberto -m -s /bin/bash -p $(openssl passwd 123)

useradd -g GRP_SEC josefina -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_SEC amanda -m -s /bin/bash -p $(openssl passwd 123)
useradd -g GRP_SEC rogerio -m -s /bin/bash -p $(openssl passwd 123)

echo "Fim....."

