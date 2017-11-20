#!/bin/bash

# Get the PGP Key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

apt-get update && apt-get install elasticsearch

cd /usr/share/elasticsearch/
bin/elasticsearch-plugin install --batch x-pack
cd -

mv elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
