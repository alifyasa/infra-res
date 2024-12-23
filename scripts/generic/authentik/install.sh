helm repo add authentik https://charts.goauthentik.io
helm repo update
helm upgrade --install authentik authentik/authentik -f values.yaml -n authentik --create-namespace
kubectl apply -f ingress.yaml -n authentik
