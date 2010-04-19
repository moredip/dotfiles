set ruler
set showcmd
set incsearch
filetype plugin indent on
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter
set mouse=a

set tabstop=2 " changes width of TAB character

" hit shift-Enter to get in and out of insert mode
" inspired by http://vim.wikia.com/wiki/Avoid_the_escape_key
imap <S-Return> <Esc>
nmap <S-Return> i

" hit Ctrl-L in insert mode to insert a new line above the cursor and then
" move the cursor there
imap <C-L> <Esc> O

" from http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %

map <Leader>t :NERDTreeToggle<cr>
map <Leader>s :NERDTreeFind<cr>

" MiniBufExplorer stuff
map <Leader>b <Leader>mbe
let g:miniBufExplMapCTabSwitchBufs = 1

" FuzzyFinder is slash-f
map <Leader>f :FuzzyFinderTextMate<cr>
