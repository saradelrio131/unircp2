#!/bin/bash

#Commands to run

#Perform initialization taks on all VMs
ansible-playbook -i hosts 01-playbook.yaml

#Install NFS server
ansible-playbook -i hosts 02-playbook.yaml

#Perform common tasks on all k8s nodes
ansible-playbook -i hosts 03-playbook.yaml

#
ansible-playbook -i hosts 04-playbook.yaml
