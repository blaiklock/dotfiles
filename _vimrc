set nocompatible "be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Brief Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removals
