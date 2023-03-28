#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
chage -d 0 carlos

useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
chage -d 0 maria

useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
chage -d 0 joao


useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
chage -d 0 debora

useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
chage -d 0 sebastiana

useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
chage -d 0 roberto


useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
chage -d 0 josefina

useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
chage -d 0 amanda

useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
chage -d 0 rogerio


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!" 


