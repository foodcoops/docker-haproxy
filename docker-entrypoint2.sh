#!/bin/sh
set -e

if [ -n "$HAPROXY_RELOAD_FILE" ]; then
	echo "Watching $HAPROXY_RELOAD_FILE for reload requests"
	touch "$HAPROXY_RELOAD_FILE"
	inotifyd "/reload-haproxy.sh" "$HAPROXY_RELOAD_FILE:ec" &
fi

exec "/docker-entrypoint.sh" "$@"
