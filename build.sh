#!/usr/bin/env bash
set -e

echo 'Building Images'
docker build --pull -t appartment/openvpn-rpi:latest-amd64 -f Dockerfile .
docker build --pull -t appartment/openvpn-rpi:latest-arm32v7 -f Dockerfile.arm32v7 .
docker build --pull -t appartment/openvpn-rpi:latest-arm64v8 -f Dockerfile.arm64v8 .
