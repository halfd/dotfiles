" Some of this is stolen from http://www.vi-improved.org/vimrc.php
" General
syntax on
syn sync fromstart

set nocompatible    " Ensure VIM defaults
set history=100     " History is good!
set mouse=a
set nowrap
set autochdir                   " always switch to the current file directory
set backspace=indent,eol,start  " make backspace a more flexible
set backup                      " make backup files
set backupdir=~/.vim/backup     " where to put backup files
set clipboard+=unnamed          " share windows clipboard
set wildmenu                                        " It's like a filebrowser!
set wildmode=list:longest
set wildignore=*.sw*,*.pyc,*.o,*.jpg,*.png,*.gif    " None of our business!
" UI
set t_Co=256 " Set 256 colors, cause thats nice!
set background=dark " REALLY nice to have, makes your code's eyes pop out!
colorscheme darkdust

" This defines background of entire window and standard text color
hi Normal ctermbg=235 ctermfg=231

let python_highlight_builtins = 1
let python_highlight_indent_errors = 1
"hi Comment ctermfg=lightgrey ctermbg=blue
"hi String ctermfg=green ctermbg=darkgrey
"hi pythonFunction ctermfg=lightblue
"hi pythonBuiltin ctermfg=yellow
hi CursorColumn ctermbg=234
hi CursorLine ctermbg=234 cterm=NONE
hi StatusLine ctermfg=234 ctermbg=246
hi LineNr ctermbg=234 ctermfg=242
hi IncSearch ctermfg=214 ctermbg=232
hi Search ctermfg=214 ctermbg=232
hi Number ctermfg=9
hi String ctermfg=70

" Warning about overrunning the 80 char barrier
hi ColorColumn ctermbg=211
call matchadd('ColorColumn', '\%81v', 100)

" Autocompletion box
hi Pmenu ctermbg=109 ctermfg=16
hi PmenuSel ctermbg=202 ctermfg=231

hi pythonStatement ctermfg=220
hi pythonPreCondit ctermfg=24 cterm=bold

hi pythonClassDef ctermfg=220
hi pythonClassName ctermfg=202

hi pythonFuncDef ctermfg=220
hi pythonFuncName ctermfg=202

hi pythonAssignment ctermfg=221

hi pythonBuiltinObj ctermfg=31

hi pythonIndentError ctermbg=9
hi Comment ctermfg=66
hi pythonTodo ctermbg=202

"set hi Comment ctermfg=darkgrey

set showmatch               " It's always nice to know there the other bracket went
set ruler                   " We want to know where the cursor is at all times!
set number                  " Knowing which line is where is always good.
set incsearch               " Incremental search
set cursorcolumn            " Where on the current line are we?
set cursorline              " Where in the file are we?
set showcmd                 " We want to know what out commands are!
set list!                   " Show tabs and trailing
set listchars=tab:»·,trail:·
set nohlsearch              " Do not highlight searched for phrases
set laststatus=2            " always show the status line

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current 
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in 
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer


autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"im :<CR> :<CR><TAB>

" Some tweaks for better life
command! -bar -bang W :w<bang>  " :W happens all the time!
command! -bar -bang Q :q<bang>  " So does :Q
" map <F12> ggVGg?                " Use F12 to mask what you're writing!

" Make NERDTree togglable
map <F3> :NERDTreeToggle<CR>

" This has been buggy - does this help?
"set paste
" Tabbing
set tabstop=4       " Tabs should only be 4 spaces!
set shiftwidth=4    " 
set expandtab       " ONLY spaces!
set softtabstop=4   " 
set autoindent

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Folding - settings and colors
set foldmethod=indent
hi Folded ctermbg=234 ctermfg=238
