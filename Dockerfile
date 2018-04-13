FROM nginx:1.13-alpine
LABEL name="lb-nginx"
LABEL maintainer="Vincent Mi<miwenshu@gmail.com>"
COPY consul-template /usr/bin/consul-template
