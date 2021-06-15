source ~/.bashrc

sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
rm winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install --install-recommends winehq-stable -y
sudo apt install winetricks libncurses5:i386 -y
wget http://mirrors.ustc.edu.cn/wine/wine/wine-mono/6.2.0/wine-mono-6.2.0-x86.msi
wget http://mirrors.ustc.edu.cn/wine/wine/wine-gecko/2.47.2/wine-gecko-2.47.2-x86.msi
wget http://mirrors.ustc.edu.cn/wine/wine/wine-gecko/2.47.2/wine-gecko-2.47.2-x86_64.msi
wine start /i wine-mono-6.2.0-x86.msi
wine start /i wine-gecko-2.47.2-x86.msi
wine start /i wine-gecko-2.47.2-x86_64.msi

winetricks riched20 richtx32 corefonts cjkfonts

