# Install k3s  
curl -sfL https://get.k3s.io | sh -s server \
  --cluster-init
mkdir -p ~/.kube
sudo chown $USER:$USER /etc/rancher/k3s/k3s.yaml
sudo ln -s /etc/rancher/k3s/k3s.yaml ~/.kube/config
kubectl apply -f traefik-config.yaml -n kube-system
