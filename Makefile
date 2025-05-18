.PHONY: build
build:
	podman build --tag sirianni/zap2xml .

.PHONY: run
run:
	podman run --rm --name zap2xml --volume /tmp/xmltvdata:/data localhost/sirianni/zap2xml \
		-u $(ZAP2_USERNAME) -p $(ZAP2_PASSWORD) -U -o /data/xmltv.xml