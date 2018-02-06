if v:progname =~? "evim"
  finish
endif

"
"  My settings here.
"  Saturday March 27, 2010
"
" Show line numbers.
set number

" Syntax highlighting
syntax on

" Change buffers without saving
set hidden

" Put a line under the cursor
set cursorline

" Set the color scheme
colorscheme darkblue

set autoindent
set smartindent
set ts=2

"
"  End of my customizations
"


" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching

