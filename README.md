# Jetson + Home Assistant + Grafana + Prometheus = <3

The jetson prometheus collector is made from:
https://github.com/svcavallar/jetson-stats-grafana-dashboard
but is delivered with docker instead of systemd service.

## Services
- home assistant
- prometheus
- grafana
- pihole
- cadvisor
- swag (proxy and https)
- mosquitto mqtt


## Home assistant:

![Home Assistant](/misc/hass.jpg "Home assistant")

## Grafana (Prometheus datasource):

![grafana](/misc/grafana.jpg "Grafana")

## Grafana with hass data :

![grafana_hass](/misc/grafana_hass.jpg "Grafana_hass")


# Requirements
- docker-compose
- jetson-stats


# Prometheus scraping
In order to allow prometheus to scrape HASS data create a .HASS_LL_TOKEN file containing HASS long live token



# install hacs (store) on home assistant
    docker exec -it home-assistant bash
    wget -O - https://get.hacs.xyz | bash -

# env
  // GRAFANA
  GRAFANA_USER=
  GRAFANA_PASSWORD=

  //PIHOLE
  PIHOLE_WEB_PWD=
  LOCAL_IP=

  // MOSQUITYO

  MOSQUITTO_USER=
  MOSQUITTO_PASS=

  // SWAG

  URL=
  VALIDATION=
  DUCKDNSTOKEN=
  SUBDOMAINS=
  EMAIL=

  #IFTT

  IFTTT_API_KEY=

# SSL Reverse proxy Swag (Remote access to  HASS/GRAFANA)
    environment:
      - PUID=1001
      - PGID=1001
      - TZ=Europe/Paris
      - URL=YOUR-DOMAIN.duckdns.org
      - VALIDATION=duckdns
      - DUCKDNSTOKEN=YOUR-TOKEN
      - SUBDOMAINS=wildcard

    copy nginx.grafana.subdomain to 