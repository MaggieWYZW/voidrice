"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

let mapleader =","

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'LukeSmithxyz/vimling'
Plug 'vimwiki/vimwiki'

" Python Things
Plug 'Yggdroot/indentLine'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set clipboard=unnamedplus
	set tabstop=4
	set shiftwidth=4
	set expandtab
	set textwidth=79
	set autoindent

" Enable autocompletion:
	set wildmode=longest,list,full

" Splits now  opens at the bottom and right. Try ':sp'
	set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P

" Replace a word with another word, bound to Ctrl+h
	map <C-h> <esc>:%s/<word>/<replace>/gc

" Bind for :sort
	vnoremap <Leader>s :sort<CR>

" :tabnew easy navigation
    map <Leader>n <esc>:tabprevious<CR>
    map <Leader>m <esc>:tabnext<CR>

" Moving of code blocks becomes easier
	vnoremap < <gv
	vnoremap > >gv

" Search is no longer case sentive of page sensitive
	set hlsearch
	set incsearch
	set ignorecase
	set smartcase

" Disables swap files and backups
	set nobackup
	set nowritebackup
	set noswapfile

" StarLeaf - shows svn diff when you press F9
	map <F9> :vnew<CR> :read !svn diff<CR> :set syntax=diff buftype=nofile<CR>gg

" Easier pep8 things for python
	autocmd Filetype python set colorcolumn=72,79
	autocmd Filetype python highlight ColorColumn ctermbg=1 guibg=lightgrey


