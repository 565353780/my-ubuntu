source ~/.bashrc

sudo apt install clangd clang clang-tools -y
brew install wget curl cmake neovim ctags python3 nodejs

sudo ln -s /home/linuxbrew/.linuxbrew/bin/python3 /usr/bin/python

# Install pip2 and pip3
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py get-pip.py
sudo python2 get-pip.py
rm get-pip.py
wget https://bootstrap.pypa.io/get-pip.py get-pip.py
/home/linuxbrew/.linuxbrew/bin/python3 get-pip.py
rm get-pip.py
/home/linuxbrew/.linuxbrew/bin/python3 -m pip install --upgrde pip

# Install neovim-for-python
sudo pip2 install -U pynvim neovim
pip3 install -U pynvim neovim

# Replace vi with neovim
sudo rm -rf /usr/bin/vi
sudo ln -s /home/linuxbrew/.linuxbrew/bin/nvim /usr/bin/vi

# Install nvim dependency
sudo gem install environment
sudo gem install ruby_dev
npm install -g neovim pyright

# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash
cd ~/.SpaceVim/bundle/vimproc.vim
make

