fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,html,xhtml autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
