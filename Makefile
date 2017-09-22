current_directory=$(PWD)
tag=$(shell git describe)
repo='dathan/docker-diagrams'

.PHONY: build generate-diagrams

build:
	docker build -t $(repo):$(tag) .
	docker build -t $(repo):latest .

generate-diagrams:
	docker run --mount type=bind,src=$(current_directory),dst=/data --rm $(repo):$(tag)

update-packages: build
	docker run --mount type=bind,src=$(current_directory),dst=/data --rm $(repo):$(tag) cp /diagrams/package-lock.json /data/

publish:
	docker push $(repo):$(tag)
	docker push $(repo):latest
