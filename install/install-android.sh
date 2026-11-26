#!/bin/bash
# installer for pi on android arm through andronix ubuntu 

cd "$(dirname $0)"
set -xe 

cat > $HOME/.npmrc <<EOF
maxsockets=1
fetch-retries=5
EOF

# clean up failed install
sudo rm -rf /usr/local/lib/node_modules/@earendil-works


sudo npm install -g npm@10

bash install-local-always.sh

