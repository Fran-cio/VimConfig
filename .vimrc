set number                                                                   
set mouse=a
set numberwidth=1
"Clipboard asocia el unnamedplus que me permite copiar/pegar de vim hacia afuera
set clipboard=unnamed,unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set termguicolors
set showmatch
set sw=2
"Los numeritos se hacen relativos al cursor
set relativenumber
"Cargo los otros archivos de configuracion
so ~/.config/nvim/.vim/plugins.vim
so ~/.config/nvim/.vim/plugin-config.vim
so ~/.config/nvim/.vim/maps.vim

"Tema
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark
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

