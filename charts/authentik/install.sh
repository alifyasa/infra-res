helm dep build
helm upgrade --install authentik . --namespace authentik --create-namespace
