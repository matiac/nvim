set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
