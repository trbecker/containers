#!/bin/bash

/p/prometheus --config.file=/etc/prometheus/prometheus.yml \
              --storage.tsdb.path=/prometheus \
              --web.console.libraries=/p/console_libraries \
              --web.console.templates=/p/consoles \
              --web.listen-address=:9091
