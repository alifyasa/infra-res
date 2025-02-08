install:
	kubectl apply -f manifests/ns.yaml
	kubectl wait --for jsonpath='{.status.phase}=Active' --timeout=15s namespace/syncthing
	kubectl apply -f manifests

.PHONY: install
