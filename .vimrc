set nocompatible " vundle requires vi compatible mode to be disabled
filetype off " disable filetype rules cache
set rtp+=~/.vim/bundle/Vundle.vim/ " adjust vim's runtime path to include vundle location
call vundle#begin() " call the vundle initialization function

Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
" Plugin 'toppe/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'

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
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'greyblake/vim-preview'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Hashicorp
Plugin 'markcornick/vim-terraform'

call vundle#end()
filetype plugin indent on     " restore default behavior

" let g:ycm_path_to_python_interpreter = '/usr/local/opt/pyenv/shims/python'

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
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

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
set listchars=tab:\|\ ,trail:·,extends:#,nbsp:·

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'

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
set showcmd

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

let mapleader = "\\"

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR> " Requires exuberant ctags: "brew install ctags"

" Pretty JSON
:command PrettyJson :%!python -mjson.tool

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ca <Plug>(go-callstack)

au FileType go nmap <Leader>d <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 1
