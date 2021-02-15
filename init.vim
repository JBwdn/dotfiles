" Plugins:
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

call plug#end()

" Editor:
let g:neomake_python_enabled_makers = ['pylint']
set number

" NerdTree:
map <silent> <C-T> :NERDTreeToggle<CR>
map <silent> <C-Y> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" Deoplete:
let g:deoplete#enable_at_startup = 1

" Visuals:
colorscheme gruvbox
set notermguicolors
set background=dark

" Python:
command P :w !python % ;
command F !python -m black %
au filetype python :iabbrev main if __name__ == "__main__":
au filetype python :iabbrev numpy import numpy as np
au filetype python :iabbrev pandas import pandas as pd

" Julia:
command J :w !julia %;

" language server
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
\       using LanguageServer;
\       using Pkg;
\       import StaticLint;
\       import SymbolServer;
\       env_path = dirname(Pkg.Types.Context().env.project_file);
\       
\       server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
\       server.runlinter = true;
\       run(server);
\   ']
\ }

