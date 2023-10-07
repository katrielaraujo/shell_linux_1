!/bin/bash

echo "Criando usuários do sistema"

useradd quest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd quest10 -e

useradd quest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd quest11 -e

useradd quest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd quest12 -e

useradd quest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd quest13 -e

echo "Finalizado!!!"
