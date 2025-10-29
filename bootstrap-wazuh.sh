#!/bin/bash
set -e
# minimal bootstrap for Wazuh Manager on Ubuntu Server
apt update
apt install -y curl gnupg apt-transport-https lsb-release ca-certificates
mkdir -p /usr/share/keyrings
curl -fsSL -o /tmp/wazuh-gpg.key https://packages.wazuh.com/key/GPG-KEY-WAZUH
gpg --dearmor -o /usr/share/keyrings/wazuh-archive-keyring.gpg /tmp/wazuh-gpg.key
tee /etc/apt/sources.list.d/wazuh.list > /dev/null <<'EOF'
deb [signed-by=/usr/share/keyrings/wazuh-archive-keyring.gpg] https://packages.wazuh.com/4.x/apt/ stable main
EOF
apt update
apt install -y wazuh-manager
systemctl enable --now wazuh-manager
systemctl status wazuh-manager --no-pager
