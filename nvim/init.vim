call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'matsen/nvim-colors-solarized'
call plug#end()

let mapleader=";"

" Maintain undo history between sessions
set undodir=~/.vim/undodir
set undofile

" Maintain hidden buffers, rather than requiring them to be saved and unloaded
" http://derekwyatt.org/2009/08/20/the-absolute-bare-minimum/
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden

set ruler
set number " show line numbers
set showcmd
set incsearch
filetype plugin indent on
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter

set tabstop=2 " changes width of TAB character

set scrolloff=3 " leave 3 lines of breathing room when scrolling the screen through a file

" Ctrl j and k to go up and down thru wrapped lines
noremap  <buffer> <silent> <C-k> gk
noremap  <buffer> <silent> <C-j> gj

" don't break words when wrapping lines
" set linebreak


" Following courtesy of Bryce
set wildmenu
set wildmode=list:longest

set winminwidth=15 " when maximizing the current window with Ctrl-pipe, leave the other windows at 15 chars wide

" mash on j and k at once to leave insert mode. Inspired by rohits@thoughtworks.com 
imap jk <Esc>
imap kj <Esc>

" hit Ctrl-L in insert mode to insert a new line above the cursor and then
" move the cursor there
imap <C-L> <Esc> O

" remain in visual mode after (in|de)denting a visual selection
vmap > >gv
vmap < <gv

" from http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %

map <Leader>t :NERDTreeToggle<cr>
map <Leader>s :NERDTreeFind<cr>
