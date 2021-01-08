call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'

call plug#end()

let g:neomake_python_enabled_makers = ['pylint']
set number

let g:deoplete#enable_at_startup = 1
colorscheme gruvbox
set notermguicolors
set background=dark
command P !clear; python3 % ;
