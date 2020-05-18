#!/bin/bash

/app/alertmanager --config.file=/etc/alertmanager/alertmanager.yml \
		  --storage.path=/var/lib/alertmanager/data
