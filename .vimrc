set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'sjl/gundo.vim'
Bundle 'sjbach/lusty'
Bundle 'cburroughs/pep8'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'andrewle/vim-autoclose'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'tpope/vim-fugitive'



" vim-scripts repo
Bundle 'Color-Sampler-Pack'
Bundle 'pydoc.vim'
Bundle 'VimClojure'
Bundle 'vibrantink'

filetype plugin indent on 	" required!



" My vim settings

" Code Folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=4

" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab

" visual
highlight Normal ctermbg=black
"" set background = dark
set cursorline
set t_Co=256

" syntax highlighting
syntax on

" colorpack
colorscheme vibrantink

" gundo
nnoremap <F5> :GundoToggle<CR>

" lusty
set hidden

" pep8
let g:pep8_map='<leader>8'

" supertab
au Filetype python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview

" leader
let mapleader=","
set ruler
set visualbell
set number
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile
set pastetoggle=<F2>

" forgot to sudo?
cmap w!! w !sudo tee % >/dev/null


" vimclojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
