set ruler
set incsearch
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter


" from http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %

command TT NERDTreeToggle
