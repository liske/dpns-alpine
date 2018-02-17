FROM alpine:latest

ARG BUID=1000

RUN apk --no-cache add alpine-sdk bash docker
RUN adduser -u $BUID -D build

USER build:abuild

RUN abuild-keygen -a -n

RUN id

COPY --chown=build . /home/build/src

WORKDIR /home/build/src

ENTRYPOINT ["abuild"]
VOLUME ["/home/build/packages"]
