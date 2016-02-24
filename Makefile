.PHONY: all build

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))


all: build


build:
	mkdir -p $(mkfile_dir)build
	cd $(mkfile_dir)build && cmake .. && make

clean:
	rm -r $(mkfile_dir)build*