# vim-workflow

## Features: 
 - asynchronous linting
 - tree file view
 - fuzzy file search
 - more info on status and tab lines
 - keyboard mapping

## Keyboard Mapping 
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
