SERVICE:=nginx
SERVICE_PATH:=/cdata/$(SERVICE)

all: /etc/systemd/system/$(SERVICE)-pod.service .built

$(SERVICE_PATH)/data: $(SERVICE_PATH)
	mkdir -p $(SERVICE_PATH)/data

$(SERVICE_PATH)/config: $(SERVICE_PATH)
	mkdir -p $(SERVICE_PATH)/config

$(SERVICE_PATH):
	mkdir $(SERVICE_PATH)

.built: Containerfile run-$(SERVICE).sh $(SERVICE_PATH)/data $(SERVICE_PATH)/config
	podman build -v /cdata/$(SERVICE)/data:/var/lib/$(SERVICE):z \
	      	-v /cdata/$(SERVICE)/config:/etc/$(SERVICE):z -t rlyeh/$(SERVICE) . && touch .built

/etc/systemd/system/$(SERVICE)-pod.service: $(SERVICE)-pod.service
	cp $(SERVICE)-pod.service /etc/systemd/system/
	systemctl daemon-reload
