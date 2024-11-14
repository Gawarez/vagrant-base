#!/bin/bash

# K3s
curl -sfL https://get.k3s.io | sh -
mkdir ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config && sudo chmod 600 ~/.kube/config && sudo chown vagrant:vagrant ~/.kube/config
echo "export KUBECONFIG=~/.kube/config" >> ~/.bashrc

# Helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# TODO: add bash completion to helm
# helm completion bash > /etc/bash_completion.d/helm

# K9s
curl -o k9s.tar.gz -L https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_Linux_amd64.tar.gz
tar -xzf k9s.tar.gz && sudo mv k9s /usr/local/bin/k9s && rm README.md LICENSE k9s.tar.gz
