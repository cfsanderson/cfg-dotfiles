"===============================================================================
"                / _|                   | |
"            ___| |_ ___  __ _ _ __   __| | ___ _ __ ___  ___  _ __
"           / __|  _/ __|/ _` | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \
"          | (__| | \__ \ (_| | | | | (_| |  __/ |  \__ \ (_) | | | |
"           \___|_| |___/\__,_|_| |_|\__,_|\___|_|  |___/\___/|_| |_|
"===============================================================================

syntax on

set belloff=all
set display+=lastline
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nowrap
set number relativenumber
set scrolloff=5
set sidescrolloff=5
set shiftwidth=2
set smartindent
set smartcase
set splitbelow
set splitright
set tabstop=2 softtabstop=2 expandtab
set undodir=~/.vim/undodir
set undofile

highlight Comment cterm=italic

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
"w Open NERDTree by default when vim starts up if no files specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Automatically close a tab if NerdTree is the last thing running

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/goyo.vim'
Plug '~/.vim/unmanaged-plugins/gruvbox-material'
Plug '~/.vim/unmanaged-plugins/vim-javascript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

syntax enable
if has('termguicolors')
  set termguicolors
endif

" Gruvbox Material theme
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_sign_column_background = 'none'

colorscheme gruvbox-material
set background=dark

" Markdown Preview
let g:mkdp_auto_start = 0
let g:mkdp_refresh_slow = 0
let g:mkdp_browser = 'Brave Browser'

let g:airline_theme = 'gruvbox_material'

" Goyo settings
let g:goyo_width = 120
function! s:goyo_enter()
  set wrap
  set linebreak
  set noshowmode
  set noshowcmd
  set scrolloff=999
  execute "MarkdownPreview"
endfunction

function! s:goyo_leave()
  set nowrap
  set nolinebreak
  set showmode
  set showcmd
  set scrolloff=5
  execute "MarkdownPreviewStop"
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" REMAPS
let mapleader = "\<Space>"

" make return and shift+return open  up new lines above and below respectively
" without going into insert mode.
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

" save & quit
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>

" toggle NERDTree
map <leader>n :NERDTreeToggle<cr>

" open FZF
map <leader>f :FZF

" using * to search or visual selection this enters the replace command and
" puts your cursor in line to accept the term to replace
nnoremap <leader>r :%s///g<left><left>
nnoremap <leader>rc :%s///gc<left><left>

" source current file
nnoremap <leader>so :source %<cr>

" remap normal copy/paste keys to vim registers
vnoremap <C-c> "+y
noremap <C-p> "+p

" remap change split to just ctrl + {h,j,k,l}
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
