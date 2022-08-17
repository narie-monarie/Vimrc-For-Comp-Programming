set wildmenu
set termguicolors
set nocompatible
set bg=dark
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set fillchars=eob:\ 
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'valloric/youcompleteme'
Plug 'kien/rainbow_parentheses.vim'
Plug 'wakatime/vim-wakatime'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'Shougo/ddc.vim'
Plug 'shun/ddc-vim-lsp'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-clang-format'
Plug 'bfrg/vim-cpp-modern'
Plug 'uiiaoo/java-syntax.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'ayu-theme/ayu-vim'
call plug#end()

colorscheme ayu 

nmap <space>f <Cmd>FZF<CR>

augroup Templates
autocmd!
  autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
  autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
  autocmd BufNewFile *.java 0r ~/.vim/templates/skeleton.java
augroup end

augroup ClangFormatAutoEnable
autocmd!
  autocmd FileType cpp ClangFormatAutoEnable
augroup end

augroup JavaFormat 
autocmd!
  autocmd FileType java Autoformat
augroup end

