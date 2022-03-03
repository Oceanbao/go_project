.DEFAULT_GOAL := build

fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt
	golint ./...
.PHONY:lint

imports: lint
	goimports -w .
.PHONY:imports

vet: imports
	go vet ./...
.PHONY:vet

build: vet
	go build 
.PHONY:build


