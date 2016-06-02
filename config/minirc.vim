set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Color Schemes
"Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

" Go language
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'

" C language 
Plugin 'vim-scripts/a.vim'

call vundle#end()
filetype plugin indent on


