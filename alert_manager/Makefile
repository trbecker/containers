SERVICE:=alertmanager
SERVICE_PATH:=/cdata/$(SERVICE)

all: /etc/systemd/system/$(SERVICE)-pod.service $(SERVICE_PATH)/data $(SERVICE_PATH)/config/ .built

$(SERVICE_PATH)/data: $(SERVICE_PATH)
	mkdir -p $(SERVICE_PATH)/data

$(SERVICE_PATH)/config: $(SERVICE_PATH)
	mkdir -p $(SERVICE_PATH)/config

$(SERVICE_PATH):
	mkdir $(SERVICE_PATH)

.built: Containerfile run-$(SERVICE).sh alertmanager.yml
	podman build -v /cdata/$(SERVICE)/data:/var/lib/$(SERVICE):z \
	      	-v /cdata/alertmanager/config:/etc/alertmanager:z -t rlyeh/$(SERVICE) . && touch .built

/etc/systemd/system/$(SERVICE)-pod.service: $(SERVICE)-pod.service
	cp $(SERVICE)-pod.service /etc/systemd/system/
	systemctl daemon-reload
