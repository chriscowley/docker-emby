#!/bin/sh

handle_signal() {
  PID=$!
  echo "received signal. PID is ${PID}"
  kill -s SIGHUP $PID
}

trap "handle_signal" SIGINT SIGTERM SIGHUP

echo "starting emby-server"
emby-server & wait
echo "stopping emby-server"
