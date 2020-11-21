#!/usr/bin/env dash
set -efu
rm -rf kapow
git clone --depth 1 https://github.com/BBVA/kapow
cd kapow
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../kapow.bin -ldflags '-s -w -extldflags "-static"'
