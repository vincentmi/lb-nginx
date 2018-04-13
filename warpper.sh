#!/bin/sh

consul-template -consul-addr=$CONSUL_ADDR -template "./rp.tmpl:./rp.conf" -retry 30s