" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "colorscheme palenight
    Plug 'drewtempelmeyer/palenight.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'junegunn/fzf.vim'
    
    Plug 'ctrlpvim/ctrlp.vim'

    " Airline plugins
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    call plug#end()
