syntax enable
set t_Co=256
set hlsearch
set nu
set cin
set ts=4
set et
set foldenable
set foldmethod=syntax
"set foldmethod=indent
set foldopen=all
set foldcolumn=1
set shiftwidth=4
set guifont=Consolas\ 10
set wrap!
map <F3> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
map <F5> :make<CR>
map <F7> :Ntree<CR>
map <F8> :cn<CR>
map <F9> :cp<CR>
map <F6> :cl<CR>
map <F2> :Tlist<CR>
set guioptions-=T
set wildmode=longest:list,full
set nocp
set noswapfile
"filetype plugin on
set colorcolumn=120

filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim/

" настройки Vim-Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'

"Plugin 'SirVer/ultisnips'                                                    
"Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'
"Plugin 'ervandew/snipmate.vim'
"
"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo

"------------------=== Прочее ===----------------------

Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'rosenfeld/conque-term'          " Consoles as buffers
Plugin 'tpope/vim-surround'             " Parentheses, brackets, quotes, XML tags, and more

"---------------=== Поддержка языка ===-------------
" --- Python ---
Plugin 'klen/python-mode'               " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim


call vundle#end()
filetype plugin indent on
