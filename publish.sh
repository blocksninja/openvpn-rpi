#!/usr/bin/env bash
set -e

echo 'Pushing'
docker push ryansch/openvpn:latest-amd64
docker push ryansch/openvpn:latest-arm32v6
# docker push ryansch/openvpn:${docker_version}-arm64v8

echo 'Pushing Manifest'
manifest-tool push from-spec manifest.yml
