" vim: foldmethod=marker
"{{{pohyb v textu
inoremap <m-w> <esc><right>wi
inoremap <m-b> <esc>bi
inoremap <m-e> <esc>ea
inoremap <m-o> <esc>o
inoremap <m-O> <esc>O

inoremap <m-h> ha
inoremap <m-j> ja
inoremap <m-k> ka
inoremap <m-l> la

"inoremap <m-H> ha
inoremap <m-J> ja
inoremap <m-K> ka
"inoremap <m-L> la
imap <m-H> h
imap <m-L> l

map <m-j> j
map <m-k> k
map <m-h> h
map <m-l> l
map <m-o> o
map <m-O> O
map <m-e> e
map <m-w> w
map <m-b> b

"inoremap <m-s-h> <s-left>
"inoremap <m-s-l> <s-right>
"map <m-s-h> <s-left>
"map <m-s-l> <s-right>
"}}}
"{{{pohyb mezi taby
imap <S-Right> <esc>gt
map <S-Right> gt
imap <S-Left> <esc>gT
map <S-Left> gT
map <m-n> gT
map <m-m> gt
nnoremap <silent> <M-S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <M-S-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <silent> <c-n> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <c-m> :execute 'silent! tabmove ' . tabpagenr()<CR>

if &modifiable
  retab!
endif
"}}}
"{{{ukladani
map <m-q> :w<cr>
imap <m-q> <esc>:w<cr>a
map <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
"}}}
"{{{lepsi nastaveni pohybu nahoru/dolu
"""""""""""""""""""""""""""""""""""""""
nnoremap j gj
nnoremap k gk
"}}}
"{{{leader mappings
"""""""""""""""""""""""""""""""""""""""
map <leader>xx :tabc<cr>
map <leader><tab> :tabe<cr>

"{{{Fugitive
map <leader>gd :Gdiff<cr>
map <leader>gs :Gstatus<cr>
"}}}

map <leader><leader>g :Ack -r "" ./<left><left><left><left>

"word under cursor mappings
map <leader>wg :Ack -r "<C-R><C-W>" ./<left><left><left><left>
map <Leader>wv :CtrlP<CR><C-\>w
nnoremap <Leader>wn :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"open CtrlP with search word under cursor

"}}}
"{{{tmux
map <Leader>uu :SlimuxREPLSendLine<CR>
vmap <Leader>uu :SlimuxREPLSendSelection<CR>

map <Leader>uy :Tyank<cr>
vmap <Leader>uy :Tyank<cr>
map <leader>up :Tput<cr>
"}}}
"{{{Ctrl-p
" let g:ctrlp_map = '<leader>v'
map <Leader>b :CtrlPBuffer<cr>
nnoremap <Leader>k :CtrlPFunky<cr>
"}}}
"{{{Tcomment
imap Ł <esc>Ł
map Ł gcc
vmap Ł gc
"}}}
"{{{ neztrácet indentaci
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>
"}}}

map <m-z> :let @/=""<CR>  :echo "Highlights Cleared"<CR>
map <F10> :echo synIDattr(synID(line("."),col("."),1),"name")<cr>
