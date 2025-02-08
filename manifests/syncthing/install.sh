#! /bin/bash

set -euo pipefail
IFS='\t\n'

kubectl apply -f manifests/ns.yaml
kubectl wait --for jsonpath='{.status.phase}=Active' --timeout=5s namespace/syncthing
kubectl apply -f manifests
