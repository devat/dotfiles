setlocal omnifunc=jedi#completions
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0

let b:python_version_2 = 1
let python_highlight_all = 1


"set cursorcolumn
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
set autoindent
set smarttab
UltiSnipsAddFiletypes python

imap <buffer> ůt self§
imap <buffer> ůs self§
imap <buffer> ů+ True§
imap <buffer> ůě False§
imap <buffer> ů; None§
imap <buffer> ůr return§
imap <buffer> ůc doc§
imap <buffer> ůi if§
imap <buffer> ůe else§
imap <buffer> ůf for§

syn region pythonDocComment
      \ start=+\(:\n[\t ]*\)\@<=\z('''\|"""\)+ end=+\z1+ keepend
      \ contains=pythonEscape,pythonTodo,@Spell


imap <buffer> ůl class§
imap <buffer> ůd def§
