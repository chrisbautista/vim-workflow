"====================
" vim workflow
" @chrisbautista "codespud"
" features: 
" - asynchronous linting
" - tree file view
" - fuzzy file search
" - more info on status and tab lines
" - keyboard mapping
"====================

"
" Plugins
"
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'http://github.com/mattn/emmet-vim/'
" Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/tpope/vim-fugitive'
"Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-eunuch'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/junegunn/fzf.vim'
"Plug 'https://github.com/Valloric/YouCompleteMe'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" debugging php, python, nodejs, etc
"Plug 'vim-vdebug/vdebug'

Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()

" 
" Keyboard mapping
"
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
map <C-_> :tabedit<CR>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-\> :vsplit<CR>
map <C-S-Right> <C-W><Right> 
map <C-S-Left> <C-W><Left>
map <M-C-Right> :bn<CR>
map <M-C-Left> :bp<CR>
map <C-F12> :Gblame<CR>
map <C-S-kDel> :wqa<CR>
map <C-S-Home> :mks! ./.vimsession<CR>
map <C-Home> :source ./.vimsession<CR>
map <F8> :vertical wincmd f<CR> " open file under cursor

let g:seoul256_background = 255
let g:ycm_server_python_interpreter="/usr/bin/python"

colo seoul256
set background=light

set number " enable line numbers
set cursorline " enable cursoline highlight

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

"
" Plugin options
"
let NERDTreeIgnore = ['\.py[co]$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize = 18

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'zenburn'
let g:airline_powerline_fonts = 1

"## NOTES ##
" gf - goto file - goto the filename then gf
" vim -d file1 file2 - diff files
" vim file.zip - opens a zip file and list all contents - option to open file
" % - means current file
" :r !<command> - read in to current buffer
" :vertical sb 3 - create vsplit - load buffer 3
" 




