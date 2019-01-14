"====================
" vim workflow
" @chrisbautista "codespud"
" features:
" - asynchronous linting
" - tree file view
" - fuzzy file search
" - more info on status and tab lines
" - keyboard mapping
" - php debugging
" - use , as <leader>
"====================

set nocompatible

"
" Plugins
"
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'http://github.com/mattn/emmet-vim/'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/tpope/vim-fugitive'
"Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-eunuch'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/mustache/vim-mustache-handlebars'
Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/vim-scripts/grep.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yegappan/mru'

" debugging php, python, nodejs, etc
Plug 'vim-vdebug/vdebug'
" Plug 'jaredly/vim-debug'
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

"AUTOLOAD ON OPEN
autocmd VimEnter * NERDTree | q
autocmd VimEnter * MRU

"
" Keyboard mapping
"
let mapleader = ","
map ; :Files<CR>
map <leader><leader> :Windows<CR>
map <leader>' :Buffers<CR>
map <leader>. :BLines<CR>
map <leader>n :bn<CR>
map <leader>p :bp<CR>
map <leader>\ :vsplit<CR>
map <leader>/ :split<CR>
map <leader>s :Snippets<CR>
map <leader>v  :tabedit ~/.vimrc<CR>
map <leader>g :GFiles?<CR>
map <leader>= ggVgg=
nmap <leader><CR> :source %<CR>
nnoremap <leader>q :q<CR>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
nmap <Leader>h :Gstatus<CR><C-w>20+
nmap <Leader>w :Git diff<CR>
nmap <Leader>c :Git add --all<CR>:Git commit -m
"nmap <Leader>l :Gpull --rebase<CR>
"nmap <Leader>p :Gpush<CR>
map <leader><F2> :wqa<CR>
map <leader><F4> :bd<CR>
map <leader><F10> :term<CR>
map <leader><F11> :source ./.vimsession<CR>
map <leader><F12> :mks! ./.vimsession<CR>
map <leader>r :MRU<CR>
map <leader>l :NERDTreeFind<CR>
map <leader>o :NERDTreeToggle<CR>
map <C-_> :tabedit<CR>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-Right> <C-W><Right>
map <C-S-Left> <C-W><Left>
map <M-C-Left> :bp<CR>
map <C-F12> :Gblame<CR>
map <C-f> :Rgrep<CR>
" DO NOT MAP F5, F10

" vim annoyances
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
set linebreak
set nobackup
set noswapfile
"set backupdir=~/.vim/backup
"set directory=~/.vim/swap
set backspace=indent,eol,start
set splitbelow
set splitright

" Light color scheme using PaperColor
set t_Co=256
set background=light
colorscheme PaperColor

" Darkula
"colorscheme dracula

set number " enable line numbers
set cursorline " enable cursoline highlight
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white  guibg=darkred guifg=white

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

"
" Plugin options
"
let MRU_Window_Height = 20
let Grep_Skip_Dirs = '.c9 node_modules'
let g:ycm_server_python_interpreter="/usr/bin/python"
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'zenburn'
let g:airline_powerline_fonts = 1
let g:prettier#config#single_quote = 'true'
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\}
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'
let g:ale_fix_on_save = 1

let g:vdebug_options = {
    \    'port' : 9001,
    \    'timeout' : 20,
    \    'server' : '172.17.0.1',
    \    'on_close' : 'stop',
    \    'break_on_open' : 0,
    \    'ide_key' : 'PHP_DEBUGGER',
    \    'debug_window_level' : 0,
    \    'debug_file_level' : 0,
    \    'debug_file' : '',
    \    'watch_window_style' : 'expanded',
    \    'marker_default' : '⬦',
    \    'marker_closed_tree' : '▸',
    \    'marker_open_tree' : '▾',
    \    'sign_breakpoint' : '▷',
    \    'sign_current' : '▶',
    \    'continuous_mode'  : 1
    \}
let g:vdebug_options['path_maps'] = {
      \  '/code' : '/opt/dev-setup/apps/knoxportal',
      \}

" Nerd tree
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.py[co]$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize = 50
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

" Dim inactive windows using 'colorcolumn' setting
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
" from
if exists('+colorcolumn')
  function! s:DimInactiveWindows()
    for i in range(1, tabpagewinnr(tabpagenr(), '$'))
      let l:range = ""
      if i != winnr()
        if &wrap
         " HACK: when wrapping lines is enabled, we use the maximum number
         " of columns getting highlighted. This might get calculated by
         " looking for the longest visible line and using a multiple of
         " winwidth().
         let l:width=256 " max
        else
         let l:width=winwidth(i)
        endif
        let l:range = join(range(1, l:width), ',')
      endif
      call setwinvar(i, '&colorcolumn', l:range)
    endfor
  endfunction
  augroup DimInactiveWindows
    au!
    au WinEnter * call s:DimInactiveWindows()
    au WinEnter * set cursorline
    au WinLeave * set nocursorline
  augroup END
endif" Dim inactive windows using 'colorcolumn' setting
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
" from
if exists('+colorcolumn')
  function! s:DimInactiveWindows()
    for i in range(1, tabpagewinnr(tabpagenr(), '$'))
      let l:range = ""
      if i != winnr()
        if &wrap
         " HACK: when wrapping lines is enabled, we use the maximum number
         " of columns getting highlighted. This might get calculated by
         " looking for the longest visible line and using a multiple of
         " winwidth().
         let l:width=256 " max
        else
         let l:width=winwidth(i)
        endif
        let l:range = join(range(1, l:width), ',')
      endif
      call setwinvar(i, '&colorcolumn', l:range)
    endfor
  endfunction
  augroup DimInactiveWindows
    au!
    au WinEnter * call s:DimInactiveWindows()
    au WinEnter * set cursorline
    au WinLeave * set nocursorline
  augroup END
endif


"## NOTES ##
" gf - goto file - goto the filename then gf
" vim -d file1 file2 - diff files
" vim file.zip - opens a zip file and list all contents - option to open file
" % - means current file
" :r !<command> - read in to current buffer
" :vertical sb 3 - create vsplit - load buffer 3
"

" <Esc> is the escape key or use <ctrl>[  sometimes written as  <C-[>

"vimtutor    : starts vim editing a copy of a tutorial file -- very good.
"i           : insert mode. Next keys typed are inserted into the file.
"<Esc>       : Escape from insert mode so you can navigate and use edit commands (stop selecting)
"h j k l     : move cursor ( h: ←  j: ↓  k: ↑  l: → )
"A           : Append at end of line
"o           : Insert at new line below
"u           : undo last command, again and again
"x           : delete character under cursor
"dw          : delete everything right from the cursor to the start of next word (and put it into the default register)
"dd          : delete line (and put it into the default register)
"p           : paste the default register

"/myname     : search forward for myname

":wq         : write and quit
":x          : write and quit
":w filename : write a copy of the file you are editing as filename
":q!         : quit without saving even if changes were made!
":help       : display help
"<Tab>       : use tab completion to scroll through commands that start with what you typed<Esc> is the escape key or use <ctrl>[  sometimes written as  <C-[>
