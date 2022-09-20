#!/bin/sh

mkdir /root/.ssh
echo -n "$SSH_KEY" > /root/.ssh/base64key.txt
base64 -d /root/.ssh/base64key.txt > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

touch /root/.ssh/known_hosts
chmod 600 /root/.ssh/known_hosts
ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts 2> /dev/null
git config --global user.name "drone-ci"
git config --list