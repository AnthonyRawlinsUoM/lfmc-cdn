all: build install pull
	
stack:
	@docker build --tag=anthonyrawlinsuom/lfmc-cdn .
	@docker push anthonyrawlinsuom/lfmc-cdn

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