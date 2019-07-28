
" Important Settings

" syntax
syntax on

set nocompatible

" encoding
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

" install vim-plug if required
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



set shiftwidth=4
set tabstop=4


" General Settings
set cmdheight=2
set laststatus=2
set showtabline=2
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" reduce esc lag
set ttimeoutlen=10

" auto indent by filetype
" filetype plugin indent on

" Personaisation
set background=dark

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Pywal colors
colorscheme wal

" Always display line numbers
set number

set clipboard=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:airline#extensions#branch#enabled=1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = "\ua0"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
