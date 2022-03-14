#!/bin/bash

# añadir tantas líneas como sean necesarias para el correcto despligue
ansible-playbook -i hosts  01-Initial-all-configuration.yaml
ansible-playbook -i hosts  02-Initial-nfs-configuration.yaml
ansible-playbook -i hosts  03-Initial-mw-configuration.yaml
ansible-playbook -i hosts  04-Initial-master-configuration.yaml
ansible-playbook -i hosts  05-Install-sdn.yaml
echo 'Espera dos minutos a que se reinicie el master para que crio tome el direccionamiento ip correcto'
sleep 120
ansible-playbook -i hosts  06-Install-ingress-controller.yaml
ansible-playbook -i hosts  07-Initial-workers-configuration.yaml
echo 'Espera dos minutos a que se reinicien los workers para que crio tome el direccionamiento ip correcto'
sleep 120
ansible-playbook -i hosts  08-Create-user-notadmin.yaml --vault-password-file kubeadmin-key
ansible-playbook -i hosts  09-Deploy-app.yaml
