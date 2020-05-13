CONTAINER_DIRS:=prometheus grafana

all:
	make -C prometheus
	make -C grafana
