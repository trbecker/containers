current_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

all: .built /etc/systemd/system/grafana-pod.service

.built: Containerfile run-grafana.sh
	podman build -v $(current_dir)/data:/var/lib/grafana:z -t rlyeh/grafana . && touch .built

/etc/systemd/system/grafana-pod.service: grafana-pod.service
	cp grafana-pod.service /etc/systemd/system/	
	systemctl daemon-reload
