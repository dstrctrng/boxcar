SHELL := /bin/bash

all: ready

ready:
	@git submodule update --init --recursive
	@bundle check 2>&1 >/dev/null || { bundle --local --path vendor/bundle 2>&1 > /dev/null || bundle check; }
