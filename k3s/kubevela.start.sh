#!/bin/sh

set -e

# KubeVela version
VELA_VERSION=v1.5.0-alpha.3

# Install KubeVela cli
curl -fsSl https://kubevela.net/script/install.sh | bash -s $VELA_VERSION

# Install KubeVela Core
vela install --yes --version $VELA_VERSION

# Install VelaUX
vela addon enable velaux --version $VELA_VERSION

# Install kruise-rollout
vela addon enable kruise-rollout
# Install ingress-nginx
vela addon enable ingress-nginx
# Install fluxcd
vela addon enable fluxcd

# init namespace
vela env init prod --namespace prod

# Forward port
# 1. ingress nginx
vela port-forward -n vela-system addon-ingress-nginx 9080:80
# 2. velaux
vela port-forward addon-velaux -n vela-system 8080:80
