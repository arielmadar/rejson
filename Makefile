all:
	$(MAKE) -C ./src all

test:
	$(MAKE) -C ./test all
.PHONY: test

docker:
	docker pull ubuntu:latest
	docker pull ubuntu:xenial
	docker build . -t rejson:latest

clean:
	find ./ -name "*.[oa]" -exec rm {} \; -print
	find ./ -name "*.so" -exec rm {} \; -print
	find ./ -name "*.out" -exec rm {} \; -print