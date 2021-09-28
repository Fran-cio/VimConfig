set number                                                                   
set mouse=a
set numberwidth=1
set clipboard=unnamed,unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
so ~/.config/nvim/.vim/plugins.vim
so ~/.config/nvim/.vim/plugin-config.vim
so ~/.config/nvim/.vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

"Agrega un limitador de lineas en 80
set colorcolumn=80

au BufNewFile,BufRead *.html set filetype=htmldjango
lua require'colorizer'.setup()

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

