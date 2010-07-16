set ruler
set showcmd
set incsearch
filetype plugin indent on
set autoindent
set ignorecase " ignore case when searching
set smartcase  " except when search string includes a capital letter
set mouse=a

set tabstop=2 " changes width of TAB character

set scrolloff=3 " leave 3 lines of breathing room when scrolling the screen through a file

" hit shift-Enter to get in and out of insert mode
" inspired by http://vim.wikia.com/wiki/Avoid_the_escape_key
imap <S-Return> <Esc>
nmap <S-Return> i

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

" MiniBufExplorer stuff
map <Leader>b <Leader>mbe
let g:miniBufExplMapCTabSwitchBufs = 1

" FuzzyFinder is slash-f
map <Leader>f :FuzzyFinderTextMate<cr>

" ========================================
" 				PETE'S VIM CHEAT SHEET
" ========================================
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
