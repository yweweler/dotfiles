set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" in vim file-tree/file-manager
Bundle 'scrooloose/nerdtree'
" python ide like stuff
Bundle 'klen/python-mode'
" c/c++ ide autocomplete support
Bundle 'clang-complete'

filetype plugin indent on

" The rest of your config follows here
map <F2> :NERDTreeToggle<CR>

" Fast quit and save from normal and insert mode
map <C-X> <ESC>:x<CR>
imap <C-X> <ESC>:x<CR>

" Fast save from normal and insert mode
" In order to use this disable XON/XOFF mode in your terminal emulator to
" disable history screen lock functionallity that resides per default on
" ctrl-s
" map <C-S> <ESC>:w<CR>
" imap <C-S> <ESC>:w<CR>i

set wildmenu                    " Enable enhanced dmenu like command completion
set ruler                       " Display line/column/percentage bottom right
set autoread                    " Enable automatic file updates when changed from outside 

set hlsearch                    " Highlight search results
set incsearch                   " Hightlight as you type

set lazyredraw                  " Don't redraw while executing macros (good performance config)
set showmatch                   " Display matching brackets

set shiftwidth=4                " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4                   " a hard TAB displays as 4 columns
set expandtab                   " insert spaces when hitting TABs
set softtabstop=4               " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround                  " round indent to multiple of 'shiftwidth'

set autoindent                  " Align the new line indent with the previous line
set smartindent                 " Follow indentation when scrolling

"set mouse=nvi                  " Enable mouse navigation

set ttyfast                     " Enable fill speed redrawing
set undolevels=1000             " Undo log length 

" Disable any kind of backups and swap files
set nobackup
set nowb
set noswapfile

set foldmethod=indent
set foldlevel=99

set number                      " Enable line numbers


" === vim-latex-live-preview ===============================================
let g:livepreview_previewer = 'evince'

" === clang_complete features ==============================================
let g:clang_complete_auto = 1           " Autocomplete after ->, ., ::
let g:clang_complete_copen = 1          " Enable quickfix window on error
let g:clang_periodic_quickfix = 0       " Periodically update quickfix list
let g:clang_close_preview = 1           " Close preview window after autocomplete
let g:clang_complete_macros = 1         " complete macros and constants
let g:clang_complete_patterns = 1       " complete patterns like loop constructs

let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'

" ===CoVim  ================================================================
Plugin 'FredKSchott/CoVim'
let CoVim_default_name = "Iggy"
let CoVim_default_port = "4711" 
