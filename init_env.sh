sudo sh -c "cat my_config_file/my_apt_source_list > /etc/apt/sources.list"

sudo apt update
sudo apt upgrade -y
sudo apt install git fonts-powerline python2-dev python3-dev build-essential curl file minicom android-tools-adb -y

sh -c "cat my_config_file/my_bashrc_append >> ~/.bashrc"

cp my_config_file/my_gitconfig ~/.gitconfig

cp my_config_file/my_xmodmap ~/.Xmodmap

mkdir ~/.pip
cp my_config_file/my_pip_conf ~/.pip/pip.conf

