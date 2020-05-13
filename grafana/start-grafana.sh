#!/bin/bash

podman run -dt -p 3000:3000 \
	-v /pods/grafana/data:/var/lib/grafana:z \
	-e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-piechart-panel,grafana-simple-json-datasource  1.2.3" \
	rlyeh/grafana
