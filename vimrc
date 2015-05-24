"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   .vimrc 
"       Richard King ( https://github.com/RichyRich )
"       
" Optional plugins/bundles
"   Pathogen - https://github.com/tpope/vim-pathogen
"   NERDTree - https://github.com/scrooloose/nerdtree
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Use pathogen for plugin management if installed...
try
    execute pathogen#infect() 
catch /^Vim\%((\a\+)\)\=:E117/
    "swallow
endtry

set shell=/bin/bash     "default shell
set nocompatible        "Use vim mode

set nobackup            "turn off backups & swap files
set nowb
set noswapfile

filetype plugin indent on "Automatically detect file types

set background=dark     "Of course..
set cursorline          "highlight the current line

"=== colours & fonts ===
if has('win32') || has('win64')
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h15:cANSI
  set guioptions-=T "Toolbar
  set guioptions-=m "Menubar
  set lines=60
  set columns=120
elseif has('gui_macvim')
  set guifont=Menlo\ Regular:h15
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" Colorschemes, some that I like :)
" https://gist.githubusercontent.com/jeffkreeftmeijer/1523432/raw/9d2a898888e24907ee7f88c58101b2294da142ed/railscat.vim
" https://raw.githubusercontent.com/mutewinter/ir_black_mod/master/colors/ir_black_mod.vim
"

try
    colorscheme railscat
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert  "If all else fails use desert  
endtry

"=== UI Stuff ===
set ruler           "ruler on
set nowrap          "no linewrapping
set laststatus=2    "always show status bar
set cmdheight=2     "set height of command area
set number          "turn on line numbers, followed by relative number 
set relativenumber  "(in new Vim this gives a hybrid view)

"=== Behavioural Stuff ===
syntax enable
set autoread        "Automatically reload changes
set history=1024 
set clipboard+=unnamed "Yank to clipboard
set ts=4            "Tabs as 4 spaces
set bs=2            "Backspace delete everything
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable
set ignorecase      "case insensitive search
set smartcase       "but if the pattern contains an uppercase revert to case sensitive
set incsearch       "move cursor to matched string
set hlsearch        "highlight search matches
set showmatch       "show matching brackets
set noerrorbells    "shh
set novisualbell    "shh
set t_vb=           "shh
set mousehide       "hide mouse when typing
set mouse=a         "always mouse (regardless of mode)

"=== Key bindings ===

"Movement between windows
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

let mapleader=","   "Use comma as leader key

"map 0 to first non-whitespace char
map 0 ^

"my shorcuts
nmap <silent> <leader>v :e $MYVIMRC<CR>
nmap <silent> <leader>n :NERDTreeToggle<CR>

"Turn off n00b mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
