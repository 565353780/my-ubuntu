source ~/.bashrc

sudo apt install clangd clang clang-tools wget curl cmake neovim ctags python3 -y

# Install pip2 and pip3
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py get-pip.py
sudo python2 get-pip.py
rm get-pip.py
wget https://bootstrap.pypa.io/get-pip.py get-pip.py
sudo python3 get-pip.py
rm get-pip.py
sudo python3 -m pip install --upgrde pip

# Install neovim-for-python
sudo pip2 install -U pynvim neovim
sudo pip3 install -U pynvim neovim

# Replace vi with neovim
sudo rm -rf /usr/bin/vi
sudo ln -s /usr/bin/nvim /usr/bin/vi

# Install nvim dependency
sudo gem install environment
sudo gem install ruby_dev
npm install -g neovim pyright

# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash
cd ~/.SpaceVim/bundle/vimproc.vim
make

