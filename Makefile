build:
	docker build -t gobank .

run: build
	docker run -p 3000:3000 -d gobank

stop:
	docker stop $$(docker ps -q --filter ancestor=gobank)

test:
	go test -v ./...

.PHONY: build run stop test