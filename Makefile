default: clean build

clean:
	rm -rf cmd models restapi main

generate:
	swagger generate server -A hikyaku -f ./swagger.yml

build: generate
	go build cmd/hikyaku-server/main.go

