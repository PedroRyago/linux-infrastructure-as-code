#!/bin/bash

echo "Criando usuários..."

useradd guest1 -m -c "Convidado 1" -s /bin/bash
echo "guest1" | sudo passwd --stdin guest1
passwd guest1 -e

useradd guest2 -m -c "Convidado 2" -s /bin/bash
echo "guest2" | sudo passwd --stdin guest2 
passwd guest2 -e

useradd guest3 -m -c "Convidado 3" -s /bin/bash 
echo "guest3" | sudo passwd --stdin guest3
passwd guest3 -e

echo "Finalizado!"


