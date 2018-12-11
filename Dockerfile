FROM nginx:1.13-alpine
LABEL name="lb-nginx"
LABEL maintainer="Vincent Mi<miwenshu@gmail.com>"

ENV CONSUL_ADDR 127.0.0.1:8500
COPY consul-template  rp.tmpl  warpper.sh /root/
COPY index.html /usr/share/nginx/html/

ENTRYPOINT ["/root/warpper.sh"]
