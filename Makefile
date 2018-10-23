build: setup_server setup_desktop

validate_server:
	packer validate -var-file variables/server.json templates/server.json
build_server: validate_server
	packer build -var-file variables/server.json templates/server.json
setup_server: build_server
	bash ./test/server/setup.sh

validate_desktop:
	packer validate -var-file variables/desktop.json templates/desktop.json
build_desktop: validate_desktop 
	packer build -var-file variables/desktop.json templates/desktop.json
setup_desktop: build_desktop
	bash ./test/desktop/setup.sh

clean:
	rm -rf packer_cache
	rm -rf output*

clean-all: clean
	bash ./test/server/destroy.sh
	bash ./test/desktop/destroy.sh