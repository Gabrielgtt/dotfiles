augroup FileTypeSpecificAutocommands
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType javascript.jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

let mapleader=" "

call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

"   Style
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-commentary'

Plug 'airblade/vim-rooter'


" Better reading experience
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

" Limelight config
let g:limelight_conceal_ctermfg = 'gray'


" NVIM configuration file
nnoremap <Leader>ve :tabnew ~/.config/nvim/init.vim<cr>
nnoremap <Leader>vs :source ~/.config/nvim/init.vim<cr>

" Plugins
nnoremap <Leader>pi :PlugInstall<cr>

let g:airline_theme='deus'

set background=dark

set nu rnu ts=4 sw=4 si ai et
set splitright
set splitbelow
set hlsearch
set incsearch
set cursorline
set expandtab

inoremap {<CR> {<CR>}<Esc>O

nnoremap <Leader>h :noh<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>t :<CR>
nnoremap <Leader>c :

" Mapas de splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Mapas do FZF
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fa :Files ~/<CR>
nnoremap <Leader>fr :Rg<CR>
nnoremap <Leader>fh :History<CR>
nnoremap <Leader>f: :History:<CR>
nnoremap <Leader>b :Windows<CR>


" Mapas do Git
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gi :CocCommand git.chunkInfo<CR>
nnoremap <Leader>gu :CocCommand git.chunkUndo<CR>


" Git merge
nnoremap <Leader>gm :Gvdiffsplit!<CR>
nnoremap <Leader>gh :diffget //2<CR>
nnoremap <Leader>gl :diffget //3<CR>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>rn <Plug>(coc-rename)


" Limelight
nmap <Leader>l :Limelight!!<CR>


nnoremap Q @q

colorscheme gruvbox 

" If installed using git
set rtp+=~/.fzf

" Precisa pra o vimwiki
syntax on
set nocompatible
filetype plugin on

