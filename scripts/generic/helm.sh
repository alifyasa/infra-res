# Install helm
wget https://get.helm.sh/helm-v3.16.3-linux-amd64.tar.gz
tar -xzvf helm-v3.16.3-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
rm -rf linux-amd64/ helm-v3.16.3-linux-amd64.tar.gz
