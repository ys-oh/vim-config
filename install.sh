#! /bin/bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install colorscheme (jellybeans)
mkdir -p ~/.vim/colors

cd ~/.vim/colors

curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

# install nodejs
curl -sL install-node.vercel.app/lts | bash

# install yarn
npm install --global yarn

# install .vimrc
mv ~/.vimrc ~/.vimrc.backup > /dev/null 2>&1

curl -fLo ~/.vimrc --create-dirs \
            https://raw.githubusercontent.com/ys-oh/vim-config/main/init.vim

