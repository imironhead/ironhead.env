#!/bin/sh

# make me executable
# chmod 755 init_gce.sh

# put a dot to keep environment variables after this script
# . ./init_gce.sh

echo 'export LC_ALL="en_US.UTF-8"' >> ~/.bashrc
export LC_ALL="en_US.UTF-8"

sudo apt-get update
sudo apt-get -y install zsh
sudo apt-get -y install htop
sudo apt-get -y install python3-pip
sudo apt-get -y install python-virtualenv
sudo apt-get -y install unzip

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree/
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar/
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline/
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes/
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/vim-easymotion/
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized/
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp af-magic-ironhead.zsh-theme ~/.oh-my-zsh/themes
echo 'exec zsh' >> ~/.bashrc
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic-ironhead"/g' ~/.zshrc
echo 'export LC_ALL="en_US.UTF-8"' >> ~/.zshrc

