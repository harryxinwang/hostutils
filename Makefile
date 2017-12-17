.PHONY: default
default: tgz

.PHONY: tgz
tgz: _output/download-utils.tgz
	echo "download-utils.tgz is built!"

_output/download-utils.tgz:
	if [ ! -z $(docker ps | grep building-cli) ]; then docker stop building-cli; fi
	if [ ! -z $(docker ps -a | grep building-cli) ]; then docker rm building-cli; fi
	docker run -d --name building-cli harryxinwang/cli:centos7511 sleep 1000
	sleep 2
	mkdir -p _output
	docker cp building-cli:/download/utils _output/utils
	tar czf _output/download-utils.tgz _output/utils
	docker stop building-cli
	docker rm building-cli

.PHONY: clear
clear:
	rm -rf _output
