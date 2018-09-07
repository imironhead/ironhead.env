init-gcm:
	echo 'export LC_ALL=en_US.UTF-8' >> .bashrc
	export LC_ALL=en_US.UTF-8
	sudo apt-get update
	sudo apt-get -y install htop
	sudo apt-get -y install python3-pip
	pip3 install virtualenv
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	cp .tmux.conf ~/.tmux.conf
	cp .vimrc ~/.vimrc
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/
	git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/
	git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/
	git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/
	git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/

