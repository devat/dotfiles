call NERDTreeAddKeyMap({
  \ 'key': 'yy',
  \ 'callback': 'NERDTreeYankCurrentNode',
  \ 'quickhelpText': 'put relative path of current node into the default register'
\})
function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        "call setreg('"', n.path.str())
        call setreg('"', (fnamemodify(n.path.str(), ':.')))
    endif
endfunction

call NERDTreeAddKeyMap({
  \ 'key': 'yf',
  \ 'callback': 'NERDTreeYankCurrentNodeFull',
  \ 'quickhelpText': 'put full path of current node into the default register'
\})
function! NERDTreeYankCurrentNodeFull()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('"', n.path.str())
    endif
endfunction
