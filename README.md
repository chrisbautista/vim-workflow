# vim-workflow

## Features: 
 - asynchronous linting
 - tree file view
 - fuzzy file search
 - more info on status and tab lines
 - keyboard mapping
 - sublime style multiple selections

## VIM Plugins
Kudos to these awesome people.
- https://github.com/junegunn/vim-github-dashboard.git
- https://github.com/ctrlpvim/ctrlp.vim
- https://github.com/pangloss/vim-javascript
- http://github.com/mattn/emmet-vim/
- https://github.com/prettier/vim-prettier
- https://github.com/tpope/vim-fugitive
- https://github.com/itchyny/lightline.vim
- https://github.com/terryma/vim-multiple-cursors
- https://github.com/tpope/vim-eunuch
- https://github.com/scrooloose/nerdtree
- https://github.com/editorconfig/editorconfig-vim
- https://github.com/w0rp/ale
- https://github.com/airblade/vim-gitgutter
- https://github.com/junegunn/fzf.vim
- https://github.com/Valloric/YouCompleteMe

## Keyboard Mapping 

| keys | vim command | description | 
| ---------|-----------|----------|
| map &lt;leader&gt;O | :NERDTreeToggle<CR>| Open file tree view |  
| map ; | :Files<CR>| fuzzy search files |
|map Ctrl+_ | :tabedit<CR>| |
|map C+t,left| :tabp<CR>| jump to left tab |
|map C+t,right| :tabn<CR>| jump to right tab|
|map &lt;leader&gt;+\ | :vsplit<CR>| split screen |
|map C+S+Right| <C-W><Right>| jump to right screen |
|map C+S+Left| <C-W><Left>| jump to left screen |
|map &lt;leader&gt;F3 | :Gblame<CR> | open gblame |
|map &lt;leader&gt;F2 | :wqa<CR> | save and exit all windows |
|map &lt;leader&gt;F12 | :mks! ./.vimsession<CR> | save session |
|map &lt;leader&gt;F11 | :source ./.vimsession<CR> | open last saved session for current dir |

