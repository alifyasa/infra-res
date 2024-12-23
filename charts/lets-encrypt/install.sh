helm install cert-manager . \
  --namespace cert-manager \
  --create-namespace \
  --set crds.enabled=true
