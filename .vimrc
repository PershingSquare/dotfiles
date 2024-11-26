set background=dark
colorscheme peaksea

set number

" Set lines of history that vim remembers
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""
" Vim UI
"
""""""""""""""""""""""""""""""""""
" Set 7 lines to cursor
set so=7

" Chinese character fix
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" No annoying sounds on errors
set noerrorbells
set novisualbell
set belloff=all
set t_vb=
set tm=500

" Add a bit of extra margin to the left
set foldcolumn=1

""""""""""""""""""""""""""""""""""
" Colors and Fonts
"
""""""""""""""""""""""""""""""""""

syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

set encoding=utf8

set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""
" Backups
"
""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""
" Text, tab and indents
"
""""""""""""""""""""""""""""""""""
" Spaces instead of tabs
set expandtab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4

" Linebreak on 80 characters
" set lbr
" set tw=80

set ai " Auto indent
set si " Smart indent
set wrap " Wrap Lines

""""""""""""""""""""""""""""""""""
" Misc
"
""""""""""""""""""""""""""""""""""
" Remove WIndows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


""""""""""""""""""""""""""""""""""
" Persistent Undo 
"
""""""""""""""""""""""""""""""""""

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

""""""""""""""""""""""""""""""""""
" Python
"
""""""""""""""""""""""""""""""""""

let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
