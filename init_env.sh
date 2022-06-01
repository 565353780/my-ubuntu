sudo sh -c "cat my_config_file/my_apt_source_list > /etc/apt/sources.list"
sudo sh -c "sed -i 's/UBUNTU_VERSION/$(lsb_release -sc)/g' /etc/apt/sources.list"

sudo apt update
sudo apt upgrade -y
sudo apt install \
  git fonts-powerline python2-dev python3-dev build-essential \
  curl file minicom android-tools-adb tmux -y

sudo apt install autojump locate fcitx htop net-tools -y

sh -c "cat my_config_file/my_bashrc_append >> ~/.bashrc"

cp my_config_file/my_gitconfig ~/.gitconfig

cp my_config_file/my_xmodmap ~/.Xmodmap

mkdir ~/.pip
cp my_config_file/my_pip_conf ~/.pip/pip.conf

