#! /bin/bash
wget https://go.dev/dl/go1.26.5.linux-amd64.tar.gz
#rm -rf /usr/local/go
#tar -C /usr/local -xzf go1.26.5.linux-amd64.tar.gz
tar -xzf go1.26.5.linux-amd64.tar.gz
sudo cp -r go /usr/local/
echo 'export PATH=$PATH:/usr/local/go/bin' >> .profile
echo 'export PATH="$PATH:$(go env GOPATH)/bin"' >> .profile

