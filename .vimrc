" Sam Castle .vimrc
" 2016 Sep 20
" 
" Edited from an example vimrc file located in
" $VIMRUNTIME/vimrc_example.vim
" created by Bram Moolenaar
" To open from within vim, run
" :e $VIMRUNTIME/vimrc_example.vim
"
" To use this config, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set hidden      " allow unsaved buffers. -- Sam edit.
" Put swap, backup, and undo files in a central location.  " -- Sam edit
set swapfile  " -- Sam edit
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
" Also use colorscheme. -- Sam edit
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  colorscheme distinguished

endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " Disable automatic comments. -- Sam edit.
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on
  set copyindent

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Sam edits below
 
" Spaces and Tabs {{{
set tabstop=2		  " number of visual spaces per TAB when reading a file
set softtabstop=2	" number of spaces per TAB when editing
set shiftwidth=2	" number of spaces per indent
set expandtab		  " TABs are spaces
" }}}

" UI Config {{{
set number	    " show line numbers
set showcmd	    " show command in bottom bar
"set cursorline	" highlight current line
set wildmenu	  " visual autocomplete for command menu
set lazyredraw	" redraw screen only when necessary, not during macros
set showmatch	  " highlight matching [{()}]
" }}}

" Searching {{{
"set incsearch  " search as characters are entered
"set hlsearch   " highlight matches -- inserted above.
" }}}

"  Folding {{{
set foldenable        " enable folding of nexted items
set foldlevelstart=10 " open 10 folds by default
" set foldnestmax=10  " nested fold max
nnoremap <space> za   " space open/closes folds in normal mode
set foldmethod=indent " fold based in indent level
" }}}

" Organization {{{
"set modelines=1   " Use last line of this file as file-specific command.
" }}}

" Movement {{{
" 
" Change movement for normal, visual+select, and operator-pending modes.
"noremap j gj    " move vertically by visual line
"noremap k gk    " same
" Repeat for visual mode.
"vnoremap j gj    " move vertically by visual line
"vnoremap k gk    " same
" }}}

" Sounds {{{
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
" }}}
