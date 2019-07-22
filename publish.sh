#!/usr/bin/env bash
set -e

echo 'Pushing'
docker push appartment/openvpn-rpi:latest-amd64
docker push appartment/openvpn-rpi:latest-arm32v7
docker push appartment/openvpn-rpi:latest-arm64v8

echo 'Pushing Manifest'
manifest-tool push from-spec manifest.yml
