" Vim config file
" Sam Castle

" Colors {{{
syntax enable    " enable syntax processing
syntax on    " enable syntax highlighting
set background=dark	" or try light
"se t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
" }}}

" Misc {{{
" Set 'nocompatible' to ward off unexpected things that the distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
" }}}

" Spaces and Tabs {{{
set tabstop=8		" number of visual spaces per TAB when reading a file
set softtabstop=8	" number of spaces per TAB when editing
set shiftwidth=8	" number of spaces per indent
set noexpandtab		" TABs are not spaces
set smarttab
" }}}

" UI Config {{{
set number	" show line numbers
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
set wildmenu	" visual autocomplete for command menu
set lazyredraw	" redraw screen only when necessary, not during macros
set showmatch	" highlight matching [{()}]
" }}}

"  Searching {{{
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
" }}}

"  Folding {{{
set foldenable		" enable folding of nexted items
set foldlevelstart=10	" open 10 folds by default
" set foldnestmax=10	" nested fold max
nnoremap <space> za	" space open/closes folds in normal mode
set foldmethod=indent	" fold based in indent level
" }}}

" Organization {{{
set modelines=1		" Use last line of this file as file-specific command.
" }}}

" Movement {{{

"set visualbell		" change error sounds to flash
"set t_vb=		" deactivate flashing
set noerrorbells visualbell t_vb=	" disable errorbell
if has('autocmd')
	  autocmd GUIEnter * set visualbell t_vb=
endif

"nnoremap j gj		" move vertically by visual line
"nnoremap k gk		" same
"nnoremap B ^		" move to beginning of line
"nnoremap E $		" move to end of line
"nnoremap ^ <nop>	" now make ^/$ do nothing.
"nnoremap $ <nop>

" Change movement for normal, visual+select, and operator-pending modes.
noremap j gj		" move vertically by visual line
noremap k gk		" same
"noremap B ^		" move to beginning of line
"noremap E $		" move to end of line
"noremap ^ <nop>		" now make ^/$ do nothing.
"noremap $ <nop>

" Repeat for visual mode.
"vnoremap j gj		" move vertically by visual line
"vnoremap k gk		" same
"vnoremap B ^		" move to beginning of line
"vnoremap E $		" move to end of line
"vnoremap ^ <nop>	" now make ^/$ do nothing.
"vnoremap $ <nop>

nnoremap gV `[v`]	" highlight last inserted text
" }}}

" Leader Shortcuts {{{
"let mapleader=","	" leader is comma, not backslash
"inoremap jk <esc>	" jk is escape in insert mode
" Disable escape in insert mode.
"inoremap <esc> <nop>
" }}}

" Modeline to fold all on markers {}
" vim:foldmethod=marker:foldlevel=0
