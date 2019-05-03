
" Important Settings

" syntax
syntax on

set nocompatible

" encoding
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
let g:python_recommended_style = 0

" General Settings
set cmdheight=2
set laststatus=2
set showtabline=2
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

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

" air-line
" airline symbols

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
