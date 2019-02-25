set backspace=2
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'plasticboy/vim-markdown'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on

" airline config
let g:airline_powerline_fonts=1
let g:airline_theme='simple'


let NERDTreeIgnore=['\.pyc$', '\~$']

set number
set ruler
syntax on
set visualbell
set fileencodings=utf8

let g:Powerline_symbols = 'fancy'
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Search Things
set hlsearch
set incsearch

" Backup directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set wildignore+=*.pyc,*.pdf,*.bbl,*.aux,*.dvi,*.blg,*.bst

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call MarkdownFormat()
function MarkdownFormat()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

"Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python call PEP8()
function PEP8()
  setlocal softtabstop=4 
  setlocal tabstop=4 
  setlocal shiftwidth=4 
  setlocal textwidth=79 
  setlocal colorcolumn=80
endfunction

" some poweline stuff
 set laststatus=2   

 set fillchars=vert:│    " that's a vertical box-drawing character
