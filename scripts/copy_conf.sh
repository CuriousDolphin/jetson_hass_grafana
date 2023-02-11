#!/bin/bash
sudo cp ./nginx.hass.subdomain.conf ./swag-data/nginx/proxy-confs/hass.subdomain.conf
sudo cp ./nginx.grafana.subdomain.conf ./swag-data/nginx/proxy-confs/grafana.subdomain.conf
sudo cp ./nginx.webrtc.subdomain.conf ./swag-data/nginx/proxy-confs/nginx.webrtc.subdomain.conf

sudo cp ./hass.configuration.yml ./hass-data/configuration.yaml
sudo cp ./template.yaml ./hass-data/template.yaml
sudo cp ./mosquitto.conf ./mosquitto/config/mosquitto.conf