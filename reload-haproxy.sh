#!/bin/sh
set -e

exec killall -SIGUSR2 haproxy-systemd-wrapper
