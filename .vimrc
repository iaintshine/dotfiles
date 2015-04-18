set nocompatible " vundle requires vi compatible mode to be disabled
filetype off " disable filetype rules cache
set rtp+=~/.vim/bundle/vundle/ " adjust vim's runtime path to include vundle location
call vundle#rc() " call the vundle initialization function

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
" Plugin 'toppe/vim-endwise'
Plugin 'tpope/vim-commentary'

Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'ecomba/vim-ruby-refactoring'

Plugin 'fatih/vim-go'
Plugin 'derekwyatt/vim-scala'
Plugin 'klen/python-mode'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'davidhalter/jedi-vim'

Plugin 'rizzatti/dash.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'greyblake/vim-preview'

filetype plugin indent on     " restore default behavior

""" General VIM Config
set number			"Show line numbers
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom

set clipboard=unnamed
set mouse=a

set autoread                    "Reload files changed outside vim
set autowrite

syntax on

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2
 
" ================ Turn Off Swap Files ==============
 
set noswapfile
set nobackup
set nowb

" ================ Search Settings  =================
 
 
set ignorecase                   " ignore case if search pattern is all lowercase
set smartcase                   " ignore case if search pattern is all lowercase
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set gdefault                    " search/replace "globally" (on a line) by default
 
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
 
 
" ================ Indentation ======================
 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
 
" Display tabs and trailing spaces visually
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
 
" set nowrap       "Don't wrap lines
" set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================
"  
"  set scrolloff=8         "Start scrolling when we're 8 lines away from
"  margins
"  set sidescrolloff=15
"  set sidescroll=1
"   
"   """ let ruby_space_errors = 1
 
set directory=~/.vim/working
set backupdir=~/.vim/backup

" =============== IDE ========================================

" set foldmethod=syntax

" =============== Color Scheme ==================================
"
" set t_Co=256
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" Nice statusbar
set laststatus=2
set statusline=
" set statusline+=%2*%-3.3n%0*\                " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%1*%m%r%w%0*               " flags
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


" remove trailing whitespace on save
autocmd BufNewFile,BufRead build.boot set filetype=clojure
autocmd FileType coffee,javascript,ruby,python,clojure autocmd BufWritePre <buffer> :%s/\s\+$//e
 
" Keyboard Shortcuts

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR> " Requires exuberant ctags: "brew install ctags"

" Pretty JSON
:command PrettyJson :%!python -mjson.tool
