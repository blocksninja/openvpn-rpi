#!/usr/bin/env bash
set -e

echo 'Pushing'
docker push ryansch/openvpn:latest-amd64
docker push ryansch/openvpn:latest-arm32v7
docker push ryansch/openvpn:latest-arm64v8

echo 'Pushing Manifest'
manifest-tool push from-spec manifest.yml
