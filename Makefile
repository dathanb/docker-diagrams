current_directory=$(PWD)

build:
	docker build -t diagrams-docker .

run:
	docker run --mount type=bind,src=$(current_directory),dst=/data --rm diagrams-docker

