# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=pairwise_product
GOPATH=./cmd/$(BINARY_NAME).go
BINPATH=./bin

.PHONY: clean

build:
	mkdir -p $(BINPATH)
	$(GOBUILD) -o $(BINPATH)/$(BINARY_NAME) $(GOPATH) 

test: build
	$(GOTEST) -v ./...

clean: 
	$(GOCLEAN)
	rm -rf $(BINPATH)

run: build
	$(BINPATH)/$(BINARY_NAME)

all: test build

