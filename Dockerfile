FROM ubuntu:xenial
ARG DEBIAN_FRONTEND=noninteractive

RUN	apt-get update && \
	apt-get install dante-server -y

COPY danted.conf /etc/

EXPOSE 1080

CMD danted