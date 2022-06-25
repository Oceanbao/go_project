.DEFAULT_GOAL := build

fmt:
	go fmt ./...
.PHONY:fmt

imports: fmt
	goimports -w .
.PHONY:imports

vet: imports
	go vet ./...
.PHONY:vet

build: vet
	go build 
.PHONY:build
