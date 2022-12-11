# Jetson + Home Assistant + Grafana + Prometheus = <3

The jetson prometheus exporter is from:
https://github.com/laminair/jetson_stats_node_exporter

# Requirements
- docker-compose
- jetson-stats


In order to allow prometheus to scrape HASS data create a .HASS_LL_TOKEN file containing HASS long live token



# install hacs (store) on home assistant
    docker exec -it home-assistant bash
    wget -O - https://get.hacs.xyz | bash -