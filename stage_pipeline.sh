#!/usr/bin/env bash
set -e
REPO="tigshiyue/nodehalvedfilm"
TAG="frosty-ember-eager-ember"
LIB="bright-helium.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
