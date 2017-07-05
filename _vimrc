let s:is_windows=has('win32') || has('win64')

set nocompatible "be iMproved
filetype off

" set the runtime path to include Vundle and initialize
if s:is_windows
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim
    let path='~/vimfiles/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/xoria256.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/tComment'
Plugin 'kien/ctrlp.vim'
Plugin 'tristen/vim-sparkup'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'hdima/python-syntax'
Plugin 'Raimondi/delimitMate'

" Keep Plugin commands between vundle#begin/end.


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set number
set ruler
set showcmd
set incsearch
set hlsearch

set expandtab
"autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2


colorscheme gruvbox
set background=dark

" enforce purity
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" But then don't
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Use :C to clear hlsearch
command! C nohlsearch

if has('gui_running')
    set guifont=DejaVu_Sans_Mono_for_Powerline:h11
endif

" --- Plugin Specific ---
" ----- bling/vim-airline -----
set laststatus=2
set encoding=utf-8

" Automatically populate the symbols dictionary
let g:airline_powerline_fonts=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled=1

" override the space character
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"

" ----- airblade/vim-gitgutter -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only=1

" ----- scrooloose/syntastic -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:syntastic_python_checkers=['pylint']
let g:syntastic_ruby_checker=['mri', 'rubocop']

" ----- plasticboy/vim-markdown -----
let g:vim_markdown_folding_disabled=1

" ----- Raimondi/delimitMate'
let delimitMate_expand_cr=1

" Brief Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removals
