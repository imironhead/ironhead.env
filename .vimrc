nmap ff <Plug>(easymotion-f)

set background=dark
set cursorline
set expandtab
set nowrap
set number
set scrolloff=999
set shiftwidth=4
set softtabstop=4
set tabstop=4
set ttimeoutlen=50

se t_Co=16

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#tab_nr_type=1
let g:airline_powerline_fonts=1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:EasyMotion_do_mapping=0
let g:EasyMotion_smartcase=1

colorscheme solarized
filetype indent on
filetype plugin on
syntax on

execute "set colorcolumn=".join(range(81,335), ',')
execute pathogen#infect()
call pathogen#helptags()

