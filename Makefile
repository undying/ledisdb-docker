
IMAGE = ledisdb

run: clean build
	docker run --rm -it $(IMAGE) bash

clean:
	docker rm $(IMAGE) || true

build:
	docker build -t $(IMAGE) .

.PHONY: run clean build
