apt update
apt upgrade -y
apt autoremove -y
apt install curl openssh-client openssh-server shadowsocks-libev socat -y

mkdir ~/.ssh

cp my_config_file/my_authorized_keys ~/.ssh/authorized_keys

chmod 600 ~/.ssh/authorized_keys

sh -c "cat my_config_file/my_ssh_append >> /etc/ssh/sshd_config"

service ssh --full-restart

#bash <(curl -s -L https://git.io/v2ray.sh)

wget https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.3.1/v2ray-plugin-linux-amd64-v1.3.1.tar.gz
tar zxf v2ray-plugin*
mv v2ray-plugin_linux_amd64 /usr/bin/v2ray-plugin

curl https://get.acme.sh | sh

source ~/.bashrc

acme.sh --register-account -m l565353780l@163.com
mkdir /root/certs
acme.sh --issue -d ss.chli.fun --standalone
acme.sh --install-cert -d ss.chli.fun --key-file /root/certs/ss.chli.fun.key --<em>fullchain</em>-file /root/certs/ss.chli.fun.cer --reloadcmd "systemctl restart shadowsocks-libev"

sh -c 'echo "{
\"server\":\"0.0.0.0\",
\"server_port\":443,
\"password\":\"H520SsSs!@#\",
\"timeout\":60,
\"method\":\"chacha20-ietf-poly1305\",
\"mode\":\"tcp_and_udp\",
\"fast_open\":false,
\"plugin\":\"v2ray-plugin\",
\"plugin_opts\":\"server;tls;fast-open;host=ss.chli.fun;cert=/root/certs/ss.chli.fun.cer;key=/root/certs/ss.chli.fun.key;loglevel=none\"
}" > /etc/shadowsocks-libev/config.json'

