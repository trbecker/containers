CONTAINER_DIRS:=prometheus grafana

all:
	make -C prometheus
	make -C grafana
	make -C alert_manager
	make -C snmp_exporter
	make -C nginx
