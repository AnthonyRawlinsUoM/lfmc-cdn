all: build install pull
	
stack:
	@docker build --tag=128.250.160.167:5000/lfmc-cdn .
	@docker push 128.250.160.167:5000/lfmc-cdn

build:
	@docker build --tag=anthonyrawlinsuom/lfmc-cdn .

install:
	@docker push anthonyrawlinsuom/lfmc-cdn
	
pull:
	@docker pull anthonyrawlinsuom/lfmc-cdn

release:
	./release.sh

clean:
	@docker rmi --force anthonyrawlinsuom/lfmc-cdn