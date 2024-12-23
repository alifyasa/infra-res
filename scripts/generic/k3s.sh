# Install k3s  
curl -sfL https://get.k3s.io | sh -  
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
