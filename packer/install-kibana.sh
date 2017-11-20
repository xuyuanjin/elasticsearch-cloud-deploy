#!/bin/bash

# Get the PGP Key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
apt-get update && apt-get install kibana
cd /usr/share/kibana/
bin/kibana-plugin install x-pack
chown kibana:kibana * -R

systemctl daemon-reload
systemctl enable kibana.service
systemctl start kibana
