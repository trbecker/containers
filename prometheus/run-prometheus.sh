#!/bin/bash

/app/prometheus --config.file=/etc/prometheus/prometheus.yml \
              --storage.tsdb.path=/var/lib/prometheus \
              --web.console.libraries=/app/console_libraries \
              --web.console.templates=/app/consoles \
              --web.listen-address=:9091
