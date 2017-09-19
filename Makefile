current_directory=$(PWD)
version=$(git describe)

build:
	docker build -t dathan/docker-diagrams:$(version) .
	docker build -t dathan/docker-diagrams:latest .

run:
	docker run --mount type=bind,src=$(current_directory),dst=/data --rm dathan/docker-diagrams

update-packages: build
	docker run --mount type=bind,src=$(current_directory),dst=/data --rm dathan/docker-diagrams cp /diagrams/package-lock.json /data/

publish:
	docker push dathan/docker-diagrams:$(version)
	docker push dathan/docker-diagrams:latest
