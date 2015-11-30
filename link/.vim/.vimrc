" vim: foldmethod=marker
"
"{{{editing help
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/switch.vim', {'on': 'Switch'}
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ervandew/supertab'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides', {'on': 'IndentGuidesToggle'}
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'gorkunov/smartpairs.vim'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
"Plug 'terryma/vim-expand-region' "don't create habit, maybe future
"}}}
"{{{python
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'aklt/plantuml-syntax'
Plug 'python-rope/ropevim', {'for': 'python', 'do': 'sudo python setup.py install'}
Plug 'tmhedberg/SimpylFold', {'for': 'python'}
Plug 'thiderman/python-syntax', {'branch': 'self'}
" Plug 'hdima/python-syntax', {'for': 'python'}
"}}}
"{{{javascript
Plug 'marijnh/tern_for_vim', {'for': 'javascript',  'do': 'sudo npm install'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'moll/vim-node', {'for': 'javascript'}
Plug 'geekjuice/vim-mocha', {'for': 'javascript'}
" Plug 'othree/jspc.vim', {'for': 'javascript'}
"}}}
"{{{other langs
Plug 'chikamichi/mediawiki.vim', {'for': 'mediawiki'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'ap/vim-css-color', {'for': 'css'}
Plug 'plasticboy/vim-markdown', {'for': 'mkd'}
"}}}
"{{{git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', {'on': 'Gitv'}
Plug 'tpope/vim-git'
Plug 'int3/vim-extradite'
"}}}
"{{{tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'epeli/slimux'
Plug 'tpope/vim-tbone'
Plug 'tmux-plugins/vim-tmux'
"}}}
"{{{context (file, buffers, quickfix...)
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'tacahiroy/ctrlp-funky', {'on': 'CtrlPFunky'}
Plug 'yssl/QFEnter'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-vinegar'
Plug 'mileszs/ack.vim', {'on': 'Ack'}
"}}}
"{{{environment
Plug 'drmikehenry/vim-fixkey'
Plug 'tpope/vim-sensible'
"}}}
"{{{others
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'dimasg/vim-mark'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim', { 'on':  'GundoToggle' }
Plug 'tpope/vim-dispatch'
Plug 'jszakmeister/vim-togglecursor'
"Plug 'vim-scripts/ZoomWin'
Plug 'ihacklog/HiCursorWords'
Plug 'valloric/MatchTagAlways'
Plug 'vimwiki/vimwiki'
Plug 'vim-scripts/Tabmerge', {'on': 'Tabmerge'}
Plug 'gcmt/taboo.vim'
"}}}
