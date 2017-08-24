syntax enable 
set number
set tabstop=4
set softtabstop=4
set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
set expandtab
set visualbell
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
