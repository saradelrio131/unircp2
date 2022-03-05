#!/bin/bash

#Commands to run

ansible-playbook -i hosts 01-playbook.yaml
ansible-playbook -i hosts -l master 02-playbook.yaml
ansible-playbook -i hosts -l workers 03-playbook.yaml
ansible-playbook -i hosts -l nfs 04-playbook.yaml
