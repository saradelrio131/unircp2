#!/bin/bash

#Commands to run

ansible-playbook -h hosts 01-playbook.yaml
ansible-playbook -h hosts -l master 02-playbook.yaml
ansible-playbook -h hosts -l workers 03-playbook.yaml
ansible-playbook -h hosts -l nfs 04-playbook.yaml