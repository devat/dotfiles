" vim: foldmethod=marker

"{{{ NERDTree
let NERDTreeWinSize=48
map <Leader>d :NERDTreeToggle<cr>
map <Leader>dd :NERDTreeToggle<cr>
map <Leader>df :NERDTreeFind<cr>

let NERDTreeIgnore = ['.*\.pyc$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowBookmarks=1

let NERDTreeMapOpenInTab='<tab>'
let g:NERDTreeMapOpenInTab='<tab>'
let g:NERDTreeMapUpdir='-'
let NERDTreeHijackNetrw = 1
let g:NERDTreeShowHidden=1
if filereadable(".NERDTreeBookmarks")
  let g:NERDTreeBookmarksFile = ".NERDTreeBookmarks"
endif
"}}}
"{{{airline
"let g:airline_powerline_fonts = 1
let g:airline_theme="wombat"
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
\ }
let g:airline#extensions#branch#enabled = 0

"let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_section_b = ''

let g:airline_symbols.linenr = ''
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.branch = '⭠'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_right_sep = '⮂'
"let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline_exclude_preview = 1


"airline}}}
"{{{IndentGuides
let g:indent_guides_auto_colors = 0
map <m-i> :IndentGuidesToggle<cr>
"}}}
"{{{Ctrl-P
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 100

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v.git$|node_modules$|bower_components$|(^|/)v?env$',
  \ }

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-h>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("t")': ['<tab>', '<c-t>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:25'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_map = '<leader>v'
if has('python')
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif
"}}}
"{{{Ctrl-P BufferDelete
call ctrlp_bdelete#init()
"}}}
"{{{Jedi
let g:jedi#popup_select_first=0
"}}}
"{{{EasyMotion
map <m-d> <Plug>(easymotion-s)
imap <m-d> <esc><Plug>(easymotion-s)
"}}}
"{{{EasyTags
let g:easytags_auto_highlight=0
"}}}
"{{{SmartPairs
let g:smartpairs_uber_mode = 1
"}}}
"{{{Tabularize
vnoremap <Enter> :Tabularize /
"}}}
"{{{SuperTab
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1
"}}}
"{{{UltiSnips
let g:UltiSnipsExpandTrigger='§'

let g:UltiSnipsJumpForwardTrigger='<m-f>'
let g:UltiSnipsJumpBackwardTrigger='<m-s-f>'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.vim/snips'
let g:UltiSnipsSnippetDirectories=["snips"]
"}}}
"{{{Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#sources#syntax#min_keyword_length = 3
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
" let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
let g:neocomplete#sources#omni#input_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

"}}}
"{{{DelimitMate
set backspace=indent,eol,start
let delimitMate_expand_space=0
let delimitMate_expand_cr=1
"}}}
"{{{VimWiki
let g:vimwiki_list = [
      \  {'path': '~/.wiki/'},
      \  {'path': '~/.wiki/spec/'},
      \]
"}}}
"{{{Mark
nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev
nmap <m-n> <Plug>MarkSearchOrCurNext
nmap <m-s-n> <Plug>MarkSearchOrCurPrev
nmap <m-m> <Plug>MarkSearchOrAnyNext
nmap <m-s-m> <Plug>MarkSearchOrAnyPrev
let g:mwDefaultHighlightingPalette = [
  \ {'ctermbg': '153', 'ctermfg': 'NONE', 'guibg': '#afd7ff', 'guifg': 'NONE'},
  \ {'ctermbg': '192', 'ctermfg': 'NONE', 'guibg': '#afffaf', 'guifg': 'NONE'},
  \ {'ctermbg': '223', 'ctermfg': 'NONE', 'guibg': '#ffd787', 'guifg': 'NONE'},
  \ {'ctermbg': '227', 'ctermfg': 'NONE', 'guibg': '#ffff5f', 'guifg': 'NONE'},
  \ {'ctermbg': '225', 'ctermfg': 'NONE', 'guibg': '#ffd7ff', 'guifg': 'NONE'},
  \ {'ctermbg': '159', 'ctermfg': 'NONE', 'guibg': '#afffff', 'guifg': 'NONE'},
  \ {'ctermbg': '189', 'ctermfg': 'NONE', 'guibg': '#d7d7ff', 'guifg': 'NONE'},
  \ {'ctermbg': '194', 'ctermfg': 'NONE', 'guibg': '#d7ffd7', 'guifg': 'NONE'},
  \ {'ctermbg': '228', 'ctermfg': 'NONE', 'guibg': '#ffff87', 'guifg': 'NONE'},
  \ {'ctermbg': '188', 'ctermfg': 'NONE', 'guibg': '#d7d7d7', 'guifg': 'NONE'},
  \ {'ctermbg': '186', 'ctermfg': 'NONE', 'guibg': '#d7d787', 'guifg': 'NONE'},
  \ {'ctermbg': '217', 'ctermfg': 'NONE', 'guibg': '#ffafaf', 'guifg': 'NONE'},
\]
"}}}
"{{{AutoPairsGentle
let g:AutoPairsUseInsertedCount = 1 
"}}}
"{{{GundoTree
let g:gundo_preview_bottom = 1
"GundoTree}}}
"{{{Sideways
map <c-s-right> :SidewaysRight<cr>
map <c-s-left> :SidewaysLeft<cr>
imap <c-s-right> <esc>:SidewaysRight<cr>i
imap <c-s-left> <esc>:SidewaysLeft<cr>i
"}}}
"{{{Switch
let g:switch_custom_definitions =
    \ [
    \   ['private', 'protected', 'public']
    \ ]
nnoremap <leader>fs :Switch<cr>
"}}}
"{{{Syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 4
let g:syntastic_check_on_open = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['eslint']
"Syntastic}}}
"{{{Slimux
let g:slimux_select_from_current_window=0
"Slimux}}}
"{{{Extradite
let g:extradite_showhash = 1
let g:extradite_width=82
"Extradite}}}
"{{{Ack
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ack_use_dispatch=1
"}}}
"{{{Vim-json
let g:vim_json_syntax_conceal = 0
"}}}
"{{{QFEnter
let g:qfenter_open_map = ['o', '<2-LeftMouse>']
"}}}
"{{{vim-jsx
" let g:jsx_ext_required = 0
"}}}
