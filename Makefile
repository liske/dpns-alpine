
TAG="abuild-dpns"

build:
	mkdir -p dist/build
	docker build --force-rm --build-arg=BUID=`id -u` -t ${TAG} .
	docker run -it --rm -v `pwd`/dist:/home/build/packages/build/`uname -m` ${TAG}
