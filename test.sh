curl https://raw.githubusercontent.com/GumGun-scripts/vimConfig/main/setupVim.sh | sh
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
. ~/.bashrc
nvm install --lts
. ~/.bashrc
npm install pm2@latest -g
. ~/.bashrc
sudo apt-get install authbind
sudo touch /etc/authbind/byport/80
sudo chown $SUDO_USER /etc/authbind/byport/80
sudo chmod 755 /etc/authbind/byport/80
git clone https://github.com/aparres/ITESO_CC_SlowHelloWorldNode code
cd code
authbind --deep pm2 update
authbind --deep pm2 start web.js
pm2 startup systemd
sudo env PATH=$PATH:/home/ubuntu/.nvm/versions/node/v18.16.0/bin /home/ubuntu/.nvm/versions/node/v18.16.0/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu
pm2 save
sudo systemctl start pm2-ubuntu.service

