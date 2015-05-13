
SCREENSHOT=docker run -it --rm --name screen -v $(CURDIR):/srv screenshot

go: build run

build:
	docker build -t screenshot .

run:
	docker run -it --rm --name screen -v $(CURDIR):/srv screenshot  https://hub.docker.com/account/organizations/ hub-orgs.png 984px

cmd:
	docker run -it --rm --name screen -v /data/src/docker-screenshot:/srv --entrypoint bash screenshot
