# vim-workflow

## Features: 
 - asynchronous linting
 - tree file view
 - fuzzy file search
 - more info on status and tab lines
 - keyboard mapping

## Keyboard Mapping 

| keys | vim command | description | 
| ---------|-----------|----------|
| map Ctrl + O | :NERDTreeToggle<CR>| Open file tree view |  
| map ; | :Files<CR>| fuzzy search files |
|map Ctrl+_ | :tabedit<CR>| |
|map C+t,left| :tabp<CR>| jump to left tab |
|map C+t,right| :tabn<CR>| jump to right tab|
|map C+\ | :vsplit<CR>| split screen |
|map C+S+Right| <C-W><Right>| jump to right screen |
|map C+S+Left| <C-W><Left>| jump to left screen |
|map C+F12 | :Gblame<CR> | open gblame |
|map C+S+kDel | :wqa<CR> | save and exit all windows |
|map C+S+Home> | :mks! ./.vimsession<CR> | save session |
|map C+Home| | :source ./.vimsession<CR> | open last saved session for current dir |

