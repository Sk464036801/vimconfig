#!/bin/bash
# ./vundlize.sh

echo 'Input your proxy [default: null]. example: http://proxy.example.com:8080'
echo -n 'Proxy: '
read PROXY
export https_proxy=$PROXY
echo "export https_proxy=$PROXY" >> .bashrc
cd $HOME
echo 'Getting vundle...'
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
echo 'set runtimepath+=~/.vim/bundle/vundle/' >> ~/.vimrc
echo 'call vundle#rc()' >> ~/.vimrc
echo "Bundle 'gmarik/vundle'" >> ~/.vimrc
echo 'Finish. Happy vim life!'
