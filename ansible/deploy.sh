#!/bin/bash

# Commands to run are as follows.
# NB! They must be executed one by one.
# NB! Output from 04-playbook.yaml must be saved as it is needed as input (for more info please see deployment guide)

# 1 - Perform initialization taks on all VMs
ansible-playbook -i hosts 01-playbook.yaml

# 2 - Install NFS server
ansible-playbook -i hosts 02-playbook.yaml

# 3 - Perform common tasks on all k8s nodes
ansible-playbook -i hosts 03-playbook.yaml

# 4 - Configure k8s on master node 
ansible-playbook -i hosts 04-playbook.yaml

# 5 - Install SDN in Azure
ansible-playbook -i hosts 05-playbook.yaml

# 6 - Configure SDN in Azure
ansible-playbook -i hosts 06-playbook.yaml

# 7 - Deploy ingress controller
ansible-playbook -i hosts 07-playbook.yaml

# 8 - Configure k8s workers
ansible-playbook -i hosts 08-playbook.yaml

# 9 - Create non-admin user to manage the k8s cluster
ansible-playbook -i hosts 09-playbook.yaml

# 10 - Deploy app to k8s cluster
ansible-playbook -i hosts 10-playbook.yaml
