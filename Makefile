all: build

build:
	docker build -t sparanoid/ruby-node:latest .

run:
	docker run --rm -it --name ruby-node sparanoid/ruby-node:latest

push:
	docker push sparanoid/ruby-node:latest

stop:
	docker rm -f ruby-node

clean:
	docker rmi sparanoid/ruby-node:latest
