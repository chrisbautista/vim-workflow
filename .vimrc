"================================================================

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'http://github.com/mattn/emmet-vim/'
" Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-eunuch'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'junegunn/seoul256.vim'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

"================================================================

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
map <C-_> :tabedit<CR>
map <C-\> :vsplit<CR>
map <C-S-Right> <C-W><Right> 
map <C-S-Left> <C-W><Left> 
map <C-F12> :Gblame<CR>
map <C-S-kDel> :wqa<CR>
map <C-S-Home> :mks! ./.vimsession<CR>
map <C-Home> :source ./.vimsession<CR>

let g:seoul256_background = 256
let g:ycm_server_python_interpreter="/usr/bin/python"

colo seoul256
set background=light

" enable line numbers
set number
