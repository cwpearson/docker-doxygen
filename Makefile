all: build

.PHONY: build build_and_push
build:
	@docker build -t cwpearson/doxygen:latest .

build_and_push: build
	@docker push cwpearson/doxygen:latest

.PHONY: test
test: build
	docker run --rm -it cwpearson/doxygen doxygen -version
	docker run -u 1000:1000 --rm -it cwpearson/doxygen doxygen -version

travis_push: build
	@docker login -u $(DOCKER_USER) $(DOCKER_PASS)
	@docker push cwpearson/doxygen:latest
