SERVICE:=grafana
SERVICE_PATH:=/cdata/$(SERVICE)

all: /etc/systemd/system/$(SERVICE)-pod.service .built 

$(SERVICE_PATH)/%: $(SERVICE_PATH)
	mkdir -p $@

$(SERVICE_PATH):
	mkdir $(SERVICE_PATH)

.built: Containerfile run-$(SERVICE).sh $(SERVICE_PATH)/data
	podman build -v /cdata/$(SERVICE)/data:/var/lib/$(SERVICE):z -t rlyeh/$(SERVICE) . && touch .built

/etc/systemd/system/$(SERVICE)-pod.service: $(SERVICE)-pod.service
	cp $(SERVICE)-pod.service /etc/systemd/system/
	systemctl daemon-reload
