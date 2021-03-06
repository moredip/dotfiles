" reload this file with:  
"    :source $MYVIMRC

let mapleader=";"

" airline-tabline config
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" Maintain undo history between sessions
set undodir=~/.vim/undodir
set undofile

" Maintain hidden buffers, rather than requiring them to be saved and unloaded
" http://derekwyatt.org/2009/08/20/the-absolute-bare-minimum/
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden


" Boot up pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Example of adding a vim plugin to pathogen as a git submodule:
" (courtesy of http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
"
" cd ~/dotfiles
" git submodule add https://github.com/vim-scripts/matchit.zip.git vim/bundle/matchit
" ga .
" gc -m 'adding matchit plugin as a submodule'

set ruler
set number " show line numbers
set showcmd
set incsearch
filetype plugin indent on
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter
set mouse=a

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

set guifont=Inconsolata:h15 

set winminwidth=15 " when maximizing the current window with Ctrl-pipe, leave the other windows at 15 chars wide


" hit shift-Enter to get in and out of insert mode
" inspired by http://vim.wikia.com/wiki/Avoid_the_escape_key
imap <S-Return> <Esc>
nmap <S-Return> i

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

" vim-markdown-preview is leader-m
map <Leader>m :Mm<cr>

" yankring config - leader-space to open YR
map <Leader><Space>  :YRShow<cr>

" bind up ragtag
let g:ragtag_global_maps = 1

" bind solarized background toggling to leader-l
" (see https://github.com/altercation/vim-colors-solarized/issues/40 for why that first :call command is needed
:call togglebg#map("")
map <Leader>l :ToggleBG<cr>

"ctrl p is leader-f
map <Leader>f :CtrlP<cr>
"ctrl p in MRU mode is leader-g
map <Leader>g :CtrlPMRUFiles<cr>
"fuzzyfind by filename, not full path by default. <c-d> to toggle behaviour mid-search
let g:ctrlp_by_filename = 1 

"ignore node_modules in fuzzyfind
let g:ctrlp_custom_ignore = '\v[\/]node_modules$'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>

" ========================================
" 				ALE setup
" ========================================
let g:ale_fixers = {'javascript': ['prettier']}


" ========================================
" 				PETE'S VIM CHEAT SHEET
" ========================================
"
" Courtesy of the expand-region plugin we can:
" Press ```+``` to expand the visual selection and ```_``` to shrink it.
"
" --Paste whatever was last yanked--
"  "0p
"
"  register 0 always contains whatever was last yanked (unless you 
"  specified a named register)
"
"  
"  --Cut/Paste using the system clipboard--
"  "+yy to yank current line into system clipboard
"  "+p to paste whatever is in the system clipboard
"
"
" --Global search and replace, with confirm--
" %s/foo/bar/gc
" 
" % means 'across the whole of the current buffer'
" g means 'replace all occurences'
" c means 'with confirmation'
"
"
"
" --Toggle line numbers--
" :set number!
"
"
" --Go to filename listed under cursor--
"  gf
"
"
" --Close all but the current window--
"  Ctrl-w o
"
"
" --Open 'alternate file'--
"  Ctrl-^
"	 With some plugins (e.g. rails) this is more intelligent
"
"
"	 --repeat latest character jump (i.e. with fx)--
"	 ; [semicolon]
"	 , [comma] to repeat jump in opposite direction
"
"
"
"  --jump to top/middle/bottom of screen--
"  H 
"  M
"  L
"
"
"  --jump to location of last edit--
"  '. to just go to the last line 
"  `. to go to the last line and column
"
"  this uses the special . mark automatically set by vim to wherever you last
"  made an edit
"
"
"  --jump to where you were before your last jump--
"  ``
"  ''
"
"
"  --bounce between matching parens, quotes, start and end of code blocks--
"  %
"
"
"  --paste from a register into the command buffer--
"  Ctrl-r <REGISTER>
"  e.g. Ctrl-r " to paste from the unnamed register into the command buffer
"
"
"  --pretty-print/format the entire buffer--
"  ggVG=
"  ggVG selects the entire buffer in visual mode, = performs the formatting
