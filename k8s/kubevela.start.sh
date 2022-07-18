#!/bin/sh

set -e

brew install kubevela

# Install KubeVela Core
vela install --yes --version v1.4.6

# Install VelaUX
vela addon enable velaux

# Forward port
vela port-forward addon-velaux -n vela-system 8080:80
