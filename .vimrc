syntax on

set belloff=all                         "turn off all the bells
set colorcolumn=80                      "set the 80th char column color
set incsearch                           "include search
set list
set nobackup
set noerrorbells
set noswapfile                          "no swap files
set nu                                  "numbered lines
set scrolloff=5                         "keep cursor 5 lines from bottom or top when scrolling
set shiftwidth=4
set smartindent
set smartcase
set tabstop=4 softtabstop=4 expandtab
set undodir=~/.vim/undodir
set undofile
highlight Comment cterm=italic

call plug#begin('~/.vim/plugged')

Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'leafgarland/typescript-vim'
Plug '~/.vim/unmanaged-plugins/gruvbox-material'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'

call plug#end()

syntax enable
if has('termguicolors')
  set termguicolors
endif

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_sign_column_background = 'none'

colorscheme gruvbox-material
set background=dark

" open the preview window after entering the markdown buffer
let g:mkdp_auto_start = 0
let g:airline_theme = 'gruvbox_material'

map <C-n> :NERDTreeToggle<CR>

"remap normal copy/paste keys to vim registers
vnoremap <C-c> "+y
noremap <C-v> "+P
