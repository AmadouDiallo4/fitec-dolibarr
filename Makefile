all:

prepare:
	docker pull debian:buster

build:
	docker build --file Dockerfile -t dolibarr:1.1 .

debug:
	docker run -it dolibarr:1.1 /bin/bash

run:
	docker run -it -p 80:80 dolibarr:1.1
