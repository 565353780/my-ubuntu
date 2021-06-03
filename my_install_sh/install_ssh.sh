source ~/.bashrc

sudo apt remove openssh-server -y
sudo apt install openssh-server openssh-client -y

cp my_config_file/my_authorized_keys ~/.ssh/authorized_keys

sudo chmod 600 ~/.ssh/authorized_keys

sudo sh -c "echo \"Port 22
PermitRootLogin yes
PasswordAuthentication no
PubkeyAuthentication yes
AuthorizedKeysFile      .ssh/authorized_keys .ssh/authorized_keys2
ClientAliveInterval 30
ClientAliveCountMax 20
AllowUsers chli\" >> /etc/ssh/sshd_config"

sudo service ssh --full-restart

