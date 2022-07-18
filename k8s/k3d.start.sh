#!/bin/sh

set -e

# 1. Create k3d cluster name: devcluster
k3d cluster create devcluster \
  --api-port 127.0.0.1:6443 \
  -p 80:80@loadbalancer \
  -p 443:443@loadbalancer


# 2. Get config
mkdir -p $HOME/k3d
k3d kubeconfig get devcluster > $HOME/k3d/kubeconfig
kubectl cluster-info


# 3. Install traefik
helm repo add traefik https://helm.traefik.io/traefik
helm repo list
# 3.2 Install traefik
# kubectl create ns kube-system
helm install traefik traefik/traefik

# 4. Exposing the Traefik dashboard¶
# kubectl port-forward $(kubectl get pods --selector "app.kubernetes.io/name=traefik" --output=name) --address 0.0.0.0 9000:9000
# Browser access: http://traefik.localhost/dashboard/
kubectl apply -f traefik.dashboard.yaml 

# kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.0/aio/deploy/recommended.yaml