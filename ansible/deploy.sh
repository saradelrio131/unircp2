#!/bin/bash

# Commands to run

# Perform initialization taks on all VMs
ansible-playbook -i hosts 01-playbook.yaml

# Install NFS server
ansible-playbook -i hosts 02-playbook.yaml

# Perform common tasks on all k8s nodes
ansible-playbook -i hosts 03-playbook.yaml

# Configure k8s on master node 
ansible-playbook -i hosts 04-playbook.yaml

# Install SDN in Azure
ansible-playbook -i hosts 05-playbook.yaml

# Configure SDN in Azure
ansible-playbook -i hosts 06-playbook.yaml

# Deploy ingress controller
ansible-playbook -i hosts 07-playbook.yaml

# Configure k8s workers
ansible-playbook -i hosts 08-playbook.yaml
