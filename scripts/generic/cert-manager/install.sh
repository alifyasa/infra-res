kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.16.2/cert-manager.yaml
kubectl apply -f lets-encrypt.yaml -f https-redirect.yaml
