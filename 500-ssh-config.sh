#!/bin/sh

cp -r ~/Dropbox/VMshared/docs/ssh-key ~/.ssh/keys
chown -R ahshum ~/.ssh/keys
chmod -R 700 ~/.ssh/keys

tee ~/.ssh/config << EOF
# GitLab.com server
Host gitlab.com
RSAAuthentication yes
IdentityFile ~/.ssh/keys/gitlab/ahxshum
EOF
