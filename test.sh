#!/bin/bashasdfasd

curl https://raw.githubusercontent.com/GumGun-scripts/vimConfig/main/setupVim.sh | sh
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
. .bashrc
nvm install --lts
npm install pm2@latest -g


