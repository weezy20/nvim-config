filetype plugin indent on
set incsearch
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4 " makes tabs into spaces
set smartindent
set nu " set line numbers
set relativenumber
"colorscheme ron
syntax enable
set colorcolumn=85
set noswapfile
set cmdheight=2
set hidden
set scrolloff=8
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
set mouse=a
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE     guifg=DarkGrey guibg=NONE
call plug#begin("~/.config/nvim/plugged")
Plug 'rust-lang/rust.vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug '~/.config/nvim/plugged/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pechorin/any-jump.vim'
Plug 'Raimondi/delimitMate'
call plug#end()

"colorscheme sonokai
colorscheme gruvbox
let g:rustfmt_autosave = 1
"let g:syntastic_check_on_wq=0

" configuration of delimitMate
let delimitMate_expand_cr = 1

let mapleader = " "
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" vertical resize
nnoremap <silent> <Leader>] :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
"maps Ctrl+L to :noh<CR>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

inoremap <C-s> <ESC>A;
nnoremap <C-s> <ESC>A;<ESC>
