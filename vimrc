
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set runtimepath+=~/.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" first thing is entering vim mode, not plain vi
set nocompatible

" shut off bell
set belloff=all

" set number and relative number
" set nu rnu

" set about timeout of key code
set timeout timeoutlen=3000 ttimeoutlen=100



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" line number
highlight LineNr cterm=italic ctermfg=darkgray ctermbg=none

" cursor line number
highlight CursorLineNr cterm=bold ctermfg=lightgray ctermbg=none

" set cursorline color
set cursorline
hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE

" set statusbar
" set laststatus=2
" hi statusline ctermbg=darkgray ctermfg=236

" highlight search result and execute at real time
" set hls
set incsearch

" turn on syntax
syntax on

" force 256 colors on the terminal
set t_Co=256

" highlight POPUP MENU color
hi Pmenu ctermbg=gray
hi PmenuSel ctermbg=blue


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Be smart when using tabs ;)
set smarttab

" Use spaces instead of tabs
set expandtab

set ai "Auto indent
" set si "Smart indent
set wrap "Wrap lines

" this shouldn't use.
" set textwidth=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => statusline
" reference:
"   : help statusline
"   https://shapeshed.com/vim-statuslines/    
" look up colors:
"   : so $VIMRUNTIME/syntax/hitest.vim
"   and search on web `xterm 256 color`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi statusline ctermbg=darkgray ctermfg=236

hi stlInsertColor ctermbg=240 ctermfg=232

set laststatus=2
set statusline=

set statusline+=%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#stlInsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%0*\ %f
set statusline+=%0*\ %m%r%w

set statusline+=%=
set statusline+=%0*%l,%c\ 
set statusline+=%0*\ %P

" hi clear ModeMsg
set noshowmode
set showcmd


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Program compilation and run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C program compilation and run
"map <F10> :w<CR>:!g++ % && ./a.out<CR>


