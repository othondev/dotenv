""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                     General
"                                                               Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FileType * syntax sync fromstart
set autoread
set backupdir=/tmp//
set cursorline
set directory=/tmp//
set expandtab
set hidden
set ignorecase
set incsearch
set nohlsearch
set nobackup
set noerrorbells
set noswapfile nowrap
set number relativenumber
set redrawtime=10000
set shortmess+=c
set smartindent smartcase
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set undodir=/tmp//
set undofile
set updatetime=300
set scrolloff=8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                     Plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'codota/tabnine-vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                     Plugins
"                                                               Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let NERDTreeQuitOnOpen=1
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                     Mappings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-c> <ESC>
let mapleader = " "
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> <C-P> :GFiles <CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Leader>pf :Files<CR>
nnoremap <leader>Y "+Y
nnoremap <leader>af :CocFix <CR>
nnoremap <leader>ap :Prettier <CR>
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gl :GcLog <CR>
nnoremap <leader>gs :G <CR>
nnoremap <leader>gu :diffget //2<CR>
nnoremap <leader>pv :NERDTreeToggle <CR>
nnoremap <leader>u :UndotreeShow <CR>
nnoremap <leader>x :bd <CR>
nnoremap <silent> <leader>X :w <bar> %bd <bar> e# <bar> bd# <CR>
nnoremap <leader>y "+y
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>f :Ggrep! "\<<cword>\>" <CR>:copen<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                     Snippet
"                                                                       Codes
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> oconsole.log()<ESC>F(a
nnoremap <F3> :e $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                   Appearance
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#tabline#buffers_label = 'B'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tabs_label = 'T'
let g:airline#extensions#branch#format = 2
let g:airline_section_z = airline#section#create(['windowswap'])
let g:airline_theme='onedark'
let g:startify_custom_header = systemlist('gh issue list')
colorscheme onedark

