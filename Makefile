.PHONY: build run

build:
	docker build -t droopescan .

run:
	docker run --rm -ti droopescan --help
