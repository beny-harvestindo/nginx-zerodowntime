#!/bin/bash
# vim:sw=4:ts=4:et

#set -e

/usr/local/bin/nginx-reloader &

nginx -g 'daemon off;'