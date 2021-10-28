source ~/.bashrc

# Install thirdparty
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install clangd clang clang-tools wget curl cmake neovim ctags python3 nodejs yarn -y

# Install pip2 and pip3
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py get-pip.py
sudo python2 get-pip.py
rm get-pip.py
wget https://bootstrap.pypa.io/get-pip.py get-pip.py
sudo python3 get-pip.py
rm get-pip.py
sudo python3 -m pip install --upgrade pip

# Install neovim-for-python
sudo pip3 install -U pynvim neovim jedi-language-server

# Replace vi with neovim
sudo rm -rf /usr/bin/vi
sudo ln -s /usr/bin/nvim /usr/bin/vi

# Install nvim dependency
sudo gem install environment
sudo gem install ruby_dev
sudo npm install -g neovim pyright

# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash
cd ~/.SpaceVim/bundle/vimproc.vim
make

