" vim: foldmethod=marker

"explicitly load some defaults
runtime! plugin/sensible.vim

"{{{ options
set hidden         "hid:   don't care about closing modified buffers
set winminheight=0 "wmh:   allow showing windows as just status bars
if ! has("gui_running") 
  set mouse=       "disable mouse for term
endif
set mousemodel=popup
set wrap         "       soft-wrapping is on by default
set spelllang=cs
let mapleader = "\<Space>"
set pastetoggle=<F12>
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
"}}}
"{{{ folding
set foldmethod=syntax "fdm:   fold by the indentation by default
set foldnestmax=10    "fdn:   deepest fold is 10 levels
set nofoldenable      "nofen: don't fold by default
set foldlevel=1
"}}}
"{{{ searching and replacing
set ignorecase "ic:  ignores case when pattern matching
set smartcase  "scs: ignores ignorecase when pattern contains uppercase characters
set hlsearch   "hls: highlights search results; ctrl-n or :noh to unhighlight
set nogdefault "gd:  Dont' substitute all matches in a line by default
set noshowmatch "no jump after typing closing bracket
"}}}
"{{{ coding and indenting
syntax on                "syn:   syntax highlighting
set cindent              "cin:   enables automatic indenting c-style
set cinoptions=l1,j1     "cino:  affects the way cindent reindents lines
set tabstop=2                   "ts:    number of spaces that a tab renders as
set shiftwidth=2                "sw:    number of spaces to use for autoindent
set softtabstop=2               "sts:   number of spaces that tabs insert
set expandtab                   "et:    uses spaces instead of tab characters
" set completeopt=longest,menu,preview
set linespace=0
"}}}
"{{{ support files
set nobackup   "nobk:  in this age of version control, who needs it
set nowritebackup "nowb:  don't make a backup before overwriting
set swapfile      "yes, create backup file
set updatetime=500 "after 500 ms nothing typed, write swap
set directory=~/.vim/.temp
set backupdir=~/.vim/.temp
set directory=~/.vim/.temp
"}}}
"{{{ status info
set nonumber
set showmode    "smd:   shows current vi mode in lower left
set cmdheight=1 "ch:    make a little more room for error messages
set scrolloff=4 "so:    places a couple lines between the current line and the screen edge
set sidescrolloff=2 "siso:  places a couple lines between the current column and the screen edge
set ttyfast      "tf:    improves redrawing for newer computers
set lazyredraw   "lz:    will not redraw the screen while running macros (goes faster)
"}}}
"{{{ encryption
if has("cryptv")
  if v:version > 704 || v:version == 704 && has("patch399")
    set cryptmethod=blowfish2   "cm:    make encryption the most secure
  elseif v:version >= 703
    set cryptmethod=blowfish    "cm:    make encryption more secure than pkzip
  endif
endif
"}}}
"{{{ wildmenu
set wildignore+=*.~             "wig:   ignore compiled objects and backups
set wig+=*.o,*.obj,*.pyc
set wig+=.sass-cache,tmp
set wildmode=longest:full,list:longest,full
"}}}
"{{{ visual bell
set novisualbell
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
"}}}
"{{{list
set list
set listchars=tab:›\ ,precedes:«,extends:»
"}}}
"{{{cursor, separators
set cursorline
set ve=block "virtualedit cursor can be positioned where there is no actual character
if v:version >= '703'
  set colorcolumn=79
endif
set fillchars+=vert:│
"}}}
"{{{common misstypes
command! W :w
command! Q :q
command! Qa :qa
command! Wq :wq
command! Cd :cd
command! WQ :wq
command! E :e
command! Tabe :tabe
command! TAbe :tabe
command! TABe :tabe
command! TABE :tabe
"}}}


set t_Co=256 "number of colors
set guioptions=gtae
set fileencodings=ucs-bom,utf-8,cp1250,iso-8859-2,latin1 "autodetekce kodovani
set tabline=2
set showtabline=2
set modeline

set guifont=DejaVu\ Sans\ Mono\ 9
color ivan

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

inoremap jj <ESC>
