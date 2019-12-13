call plug#begin('~/.config/nvim/plugged')

" theme
Plug 'morhetz/gruvbox'

" nerdtree
Plug 'scrooloose/nerdtree'

call plug#end()

" theme
syntax enable
colorscheme gruvbox
set background=dark

" line number
set nu

" characters ruler
set cc=80

" folding
set foldlevelstart=10
set foldmethod=syntax

" NERDTree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
