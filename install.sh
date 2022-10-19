#! /bin/bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install colorschemes
mkdir -p ~/.vim/colors

cd ~/.vim/colors

curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
curl -O https://raw.githubusercontent.com/lod/desert.vim/master/colors/desert.vim


if [ "$EUID" -ne 0 ]
then
        # install nodejs
        curl -sL install-node.vercel.app/lts | sudo bash
        # install yarn
        sudo npm install --global yarn
else
        # install nodejs
        curl -sL install-node.vercel.app/lts | bash
        # install yarn
        npm install --global yarn
fi

# install .vimrc
mv ~/.vimrc ~/.vimrc.backup 2>&1 > /dev/null

curl -fLo ~/.vimrc --create-dirs \
                    https://raw.githubusercontent.com/ys-oh/vim-config/main/init.vim
