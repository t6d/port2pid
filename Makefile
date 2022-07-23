.PHONY: build run clean

build:
	crystal build --release -o port2pid port2pid.cr

run:
	crystal run port2pid.cr -- 3000

install: build
	cp port2pid /usr/local/bin

