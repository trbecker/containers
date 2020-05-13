current_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

all: .built /etc/systemd/system/prometheus-pod.service

.built: Containerfile run-prometheus.sh prometheus.yml
	podman build -v $(current_dir)/data:/prometheus:z -t rlyeh/prometheus . && touch .built

/etc/systemd/system/prometheus-pod.service: prometheus-pod.service
	cp prometheus-pod.service /etc/systemd/system/
	systemctl daemon-reload
