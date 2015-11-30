setlocal omnifunc=tern#Complete
setlocal completeopt-=preview

imap <buffer> ůr return§
imap <buffer> ůt this.
imap <buffer> ůl log§
imap <buffer> ůg cg§
imap <buffer> ůi if§
imap <buffer> ůe else§
imap <buffer> ůf forin§
imap <buffer> ůnn fun§
imap <buffer> ůnv funvar§
imap <buffer> ůnt funthis§
imap <buffer> ůh throw§
imap <buffer> ův varsimple§
imap <buffer> ůb variableset§
imap <buffer> ůc doc§

"visual variants
vmap  <buffer> ůi §if§

imap <buffer> € =>
