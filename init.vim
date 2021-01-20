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
