source ~/.bashrc

# Install zsh
sudo apt install zsh -y

# Install liblocal-lib-perl
sudo apt install liblocal-lib-perl autojump gcc-10 g++-10 -y
sudo rm /usr/bin/gcc /usr/bin/g++
sudo ln -s /usr/bin/gcc-10 /usr/bin/gcc
sudo ln -s /usr/bin/g++-10 /usr/bin/g++

PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp my_config_file/my_zshrc ~/.zshrc

# Install zsh-plugin
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo sh -c "echo \"/usr/bin/zsh\" >> /etc/shells"
chsh -s /usr/bin/zsh

