#!/bin/sh

echo 'Nginx starting ...';
/usr/sbin/nginx -s start
echo 'Nginx done'

echo 'Consul-template starting...'
/root/consul-template -consul-addr=$CONSUL_ADDR -template "/root/rp.tmpl:/etc/nginx/conf.d/rp.conf:/usr/sbin/nginx -s reload" -retry 30s