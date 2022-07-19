#!/bin/sh

set -e

# add repos
helm repo add jenkins https://charts.jenkins.io
helm repo add gitlab https://charts.gitlab.io/

# instal jenkins
helm upgrade --install jenkins --namespace jenkins \
  -f jenkins/values.yaml \
  jenkinsci/jenkins

# install gitlab
helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  --set global.hosts.domain=example.com \
  --set global.hosts.externalIP=10.10.10.10 \
  --set certmanager-issuer.email=me@example.com \
  --set postgresql.image.tag=13.6.0
