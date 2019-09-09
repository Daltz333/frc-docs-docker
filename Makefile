usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build:
	cd frc-docs-docker && docker build -t wpilib/frc-docs-docker .

push:
	docker push wpilib/frc-docs-docker

clean:
	docker rmi wpilib/frc-docs-docker
