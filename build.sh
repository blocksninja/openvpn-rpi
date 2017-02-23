#!/usr/bin/env bash
set -e

echo 'Building Images'
docker build --pull -t ryansch/openvpn:latest-amd64 -f Dockerfile .
docker build --pull -t ryansch/openvpn:latest-arm32v6 -f Dockerfile.arm32v6 .
# docker build --pull -t ryansch/openvpn:latest-arm64v8 -f Dockerfile.arm64v8 .
