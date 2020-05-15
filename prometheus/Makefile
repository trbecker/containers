SERVICE:=prometheus

all: .built /etc/systemd/system/$(SERVICE)-pod.service

.built: Containerfile run-$(SERVICE).sh prometheus.yml
	podman build -v /cdata/$(SERVICE)/data:/var/lib/$(SERVICE):z -t rlyeh/$(SERVICE) . && touch .built

/etc/systemd/system/$(SERVICE)-pod.service: $(SERVICE)-pod.service
	cp $(SERVICE)-pod.service /etc/systemd/system/
	systemctl daemon-reload
