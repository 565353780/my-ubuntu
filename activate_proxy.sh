sudo sh -c "cat my_config_file/my_apt_source_list > /etc/apt/sources.list"

sudo apt update
sudo apt upgrade -y
sudo apt install git fonts-powerline python2-dev python3-dev build-essential privoxy curl file minicom android-tools-adb -y

sudo sh -c "cat my_config_file/my_privoxy_config > /etc/privoxy/config"

sudo service privoxy restart

sh -c "cat my_config_file/my_bashrc_append >> ~/.bashrc"

cp my_config_file/my_gitconfig ~/.gitconfig

cp my_config_file/my_xmodmap ~/.Xmodmap

mkdir ~/.pip
cp my_config_file/my_pip_conf ~/.pip/pip.conf

