set ruler
set showcmd
set incsearch
filetype plugin indent on
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter
set mouse=a


" from http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %

map <Leader>t :NERDTreeToggle<cr>
map <Leader>s :NERDTreeFind<cr>

" MiniBufExplorer stuff
map <Leader>b <Leader>mbe
let g:miniBufExplMapCTabSwitchBufs = 1
