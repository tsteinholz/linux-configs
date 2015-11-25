syntax on
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set showcmd
set paste
set linebreak
map <S-Q> <nop>
set autoindent
set cindent
set ignorecase
set smartcase
set smarttab
set switchbuf=usetab,newtab
set foldmethod=syntax
set foldlevelstart=20
set tags=tags;
set expandtab
set mouse=a
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/ZoomWin'
Plugin 'rust-lang/rust.vim'

Plugin 'joshdick/onedark.vim'
Plugin 'sickill/vim-monokai'
Plugin 'atweiden/vim-colors-behelit'
Plugin 'thomd/vim-wasabi-colorscheme'

call vundle#end()
filetype plugin indent on

colorscheme monokai

cmap w!! w !sudo tee > /dev/null %

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap <silent> <C-w>z :ZoomWin<CR>
