" vim: foldmethod=marker
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "ivan"

"{{{color map
let s:colorMap = {
      \ "0" : '#000000',
      \ "1" : '#cd0000',
      \ "2" : '#00cd00',
      \ "3" : '#cdcd00',
      \ "4" : '#0000ee',
      \ "5" : '#cd00cd',
      \ "6" : '#00cdcd',
      \ "7" : '#e5e5e5',
      \ "8" : '#7f7f7f',
      \ "9" : '#ff0000',
      \ "10"  : '#00ff00',
      \ "11"  : '#ffff00',
      \ "12"  : '#5c5cff',
      \ "13"  : '#ff00ff',
      \ "14"  : '#00ffff',
      \ "15"  : '#ffffff',
      \ "16"  : '#000000',
      \ "17"  : '#00005f',
      \ "18"  : '#000087',
      \ "19"  : '#0000af',
      \ "20"  : '#0000d7',
      \ "21"  : '#0000ff',
      \ "22"  : '#005f00',
      \ "23"  : '#005f5f',
      \ "24"  : '#005f87',
      \ "25"  : '#005faf',
      \ "26"  : '#005fd7',
      \ "27"  : '#005fff',
      \ "28"  : '#008700',
      \ "29"  : '#00875f',
      \ "30"  : '#008787',
      \ "31"  : '#0087af',
      \ "32"  : '#0087d7',
      \ "33"  : '#0087ff',
      \ "34"  : '#00af00',
      \ "35"  : '#00af5f',
      \ "36"  : '#00af87',
      \ "37"  : '#00afaf',
      \ "38"  : '#00afd7',
      \ "39"  : '#00afff',
      \ "40"  : '#00d700',
      \ "41"  : '#00d75f',
      \ "42"  : '#00d787',
      \ "43"  : '#00d7af',
      \ "44"  : '#00d7d7',
      \ "45"  : '#00d7ff',
      \ "46"  : '#00ff00',
      \ "47"  : '#00ff5f',
      \ "48"  : '#00ff87',
      \ "49"  : '#00ffaf',
      \ "50"  : '#00ffd7',
      \ "51"  : '#00ffff',
      \ "52"  : '#5f0000',
      \ "53"  : '#5f005f',
      \ "54"  : '#5f0087',
      \ "55"  : '#5f00af',
      \ "56"  : '#5f00d7',
      \ "57"  : '#5f00ff',
      \ "58"  : '#5f5f00',
      \ "59"  : '#5f5f5f',
      \ "60"  : '#5f5f87',
      \ "61"  : '#5f5faf',
      \ "62"  : '#5f5fd7',
      \ "63"  : '#5f5fff',
      \ "64"  : '#5f8700',
      \ "65"  : '#5f875f',
      \ "66"  : '#5f8787',
      \ "67"  : '#5f87af',
      \ "68"  : '#5f87d7',
      \ "69"  : '#5f87ff',
      \ "70"  : '#5faf00',
      \ "71"  : '#5faf5f',
      \ "72"  : '#5faf87',
      \ "73"  : '#5fafaf',
      \ "74"  : '#5fafd7',
      \ "75"  : '#5fafff',
      \ "76"  : '#5fd700',
      \ "77"  : '#5fd75f',
      \ "78"  : '#5fd787',
      \ "79"  : '#5fd7af',
      \ "80"  : '#5fd7d7',
      \ "81"  : '#5fd7ff',
      \ "82"  : '#5fff00',
      \ "83"  : '#5fff5f',
      \ "84"  : '#5fff87',
      \ "85"  : '#5fffaf',
      \ "86"  : '#5fffd7',
      \ "87"  : '#5fffff',
      \ "88"  : '#870000',
      \ "89"  : '#87005f',
      \ "90"  : '#870087',
      \ "91"  : '#8700af',
      \ "92"  : '#8700d7',
      \ "93"  : '#8700ff',
      \ "94"  : '#875f00',
      \ "95"  : '#875f5f',
      \ "96"  : '#875f87',
      \ "97"  : '#875faf',
      \ "98"  : '#875fd7',
      \ "99"  : '#875fff',
      \ "100" : '#878700',
      \ "101" : '#87875f',
      \ "102" : '#878787',
      \ "103" : '#8787af',
      \ "104" : '#8787d7',
      \ "105" : '#8787ff',
      \ "106" : '#87af00',
      \ "107" : '#87af5f',
      \ "108" : '#87af87',
      \ "109" : '#87afaf',
      \ "110" : '#87afd7',
      \ "111" : '#87afff',
      \ "112" : '#87d700',
      \ "113" : '#87d75f',
      \ "114" : '#87d787',
      \ "115" : '#87d7af',
      \ "116" : '#87d7d7',
      \ "117" : '#87d7ff',
      \ "118" : '#87ff00',
      \ "119" : '#87ff5f',
      \ "120" : '#87ff87',
      \ "121" : '#87ffaf',
      \ "122" : '#87ffd7',
      \ "123" : '#87ffff',
      \ "124" : '#af0000',
      \ "125" : '#af005f',
      \ "126" : '#af0087',
      \ "127" : '#af00af',
      \ "128" : '#af00d7',
      \ "129" : '#af00ff',
      \ "130" : '#af5f00',
      \ "131" : '#af5f5f',
      \ "132" : '#af5f87',
      \ "133" : '#af5faf',
      \ "134" : '#af5fd7',
      \ "135" : '#af5fff',
      \ "136" : '#af8700',
      \ "137" : '#af875f',
      \ "138" : '#af8787',
      \ "139" : '#af87af',
      \ "140" : '#af87d7',
      \ "141" : '#af87ff',
      \ "142" : '#afaf00',
      \ "143" : '#afaf5f',
      \ "144" : '#afaf87',
      \ "145" : '#afafaf',
      \ "146" : '#afafd7',
      \ "147" : '#afafff',
      \ "148" : '#afd700',
      \ "149" : '#afd75f',
      \ "150" : '#afd787',
      \ "151" : '#afd7af',
      \ "152" : '#afd7d7',
      \ "153" : '#afd7ff',
      \ "154" : '#afff00',
      \ "155" : '#afff5f',
      \ "156" : '#afff87',
      \ "157" : '#afffaf',
      \ "158" : '#afffd7',
      \ "159" : '#afffff',
      \ "160" : '#d70000',
      \ "161" : '#d7005f',
      \ "162" : '#d70087',
      \ "163" : '#d700af',
      \ "164" : '#d700d7',
      \ "165" : '#d700ff',
      \ "166" : '#d75f00',
      \ "167" : '#d75f5f',
      \ "168" : '#d75f87',
      \ "169" : '#d75faf',
      \ "170" : '#d75fd7',
      \ "171" : '#d75fff',
      \ "172" : '#d78700',
      \ "173" : '#d7875f',
      \ "174" : '#d78787',
      \ "175" : '#d787af',
      \ "176" : '#d787d7',
      \ "177" : '#d787ff',
      \ "178" : '#d7af00',
      \ "179" : '#d7af5f',
      \ "180" : '#d7af87',
      \ "181" : '#d7afaf',
      \ "182" : '#d7afd7',
      \ "183" : '#d7afff',
      \ "184" : '#d7d700',
      \ "185" : '#d7d75f',
      \ "186" : '#d7d787',
      \ "187" : '#d7d7af',
      \ "188" : '#d7d7d7',
      \ "189" : '#d7d7ff',
      \ "190" : '#d7ff00',
      \ "191" : '#d7ff5f',
      \ "192" : '#d7ff87',
      \ "193" : '#d7ffaf',
      \ "194" : '#d7ffd7',
      \ "195" : '#d7ffff',
      \ "196" : '#ff0000',
      \ "197" : '#ff005f',
      \ "198" : '#ff0087',
      \ "199" : '#ff00af',
      \ "200" : '#ff00d7',
      \ "201" : '#ff00ff',
      \ "202" : '#ff5f00',
      \ "203" : '#ff5f5f',
      \ "204" : '#ff5f87',
      \ "205" : '#ff5faf',
      \ "206" : '#ff5fd7',
      \ "207" : '#ff5fff',
      \ "208" : '#ff8700',
      \ "209" : '#ff875f',
      \ "210" : '#ff8787',
      \ "211" : '#ff87af',
      \ "212" : '#ff87d7',
      \ "213" : '#ff87ff',
      \ "214" : '#ffaf00',
      \ "215" : '#ffaf5f',
      \ "216" : '#ffaf87',
      \ "217" : '#ffafaf',
      \ "218" : '#ffafd7',
      \ "219" : '#ffafff',
      \ "220" : '#ffd700',
      \ "221" : '#ffd75f',
      \ "222" : '#ffd787',
      \ "223" : '#ffd7af',
      \ "224" : '#ffd7d7',
      \ "225" : '#ffd7ff',
      \ "226" : '#ffff00',
      \ "227" : '#ffff5f',
      \ "228" : '#ffff87',
      \ "229" : '#ffffaf',
      \ "230" : '#ffffd7',
      \ "231" : '#ffffff',
      \ "232" : '#080808',
      \ "233" : '#121212',
      \ "234" : '#1c1c1c',
      \ "235" : '#262626',
      \ "236" : '#303030',
      \ "237" : '#3a3a3a',
      \ "238" : '#444444',
      \ "239" : '#4e4e4e',
      \ "240" : '#585858',
      \ "241" : '#626262',
      \ "242" : '#6c6c6c',
      \ "243" : '#767676',
      \ "244" : '#808080',
      \ "245" : '#8a8a8a',
      \ "246" : '#949494',
      \ "247" : '#9e9e9e',
      \ "248" : '#a8a8a8',
      \ "249" : '#b2b2b2',
      \ "250" : '#bcbcbc',
      \ "251" : '#c6c6c6',
      \ "252" : '#d0d0d0',
      \ "253" : '#dadada',
      \ "254" : '#e4e4e4',
      \ "255" : '#eeeeee',
      \ "NONE" : 'NONE',
      \}
""}}}
"{{{highlight function
fun! s:Hi(group, fg, bg, attr)
 exec "hi ".a:group
       \." ctermfg=".a:fg
       \." guifg=".s:colorMap[a:fg]
       \." ctermbg=".a:bg
       \.' guibg='.s:colorMap[a:bg]
       \." cterm=".a:attr
       \.' gui='.a:attr
endfun
"}}}
"{{{general
call s:Hi('CursorLine', 'NONE', '255', 'NONE')
autocmd InsertEnter * call s:Hi('CursorLine', 'NONE', '229', 'NONE')
autocmd InsertLeave * call s:Hi('CursorLine', 'NONE', '255', 'NONE')
call s:Hi('CursorColumn', 'NONE', '255', 'NONE')

call s:Hi('Normal', '238', 'NONE', 'NONE')
call s:Hi('ColorColumn', 'NONE', '230', 'NONE')
call s:Hi('Cursor', '15', '59', 'NONE')
call s:Hi('Search', '15', '27', 'bold')
call s:Hi('Folded', '194', '108', 'italic')
call s:Hi('FoldedColumn', '0', '229', 'NONE')
call s:Hi('Pmenu', '33', '15', 'NONE')
call s:Hi('PmenuSel', '15', '32', 'NONE')
call s:Hi('MatchParen', 'NONE', '220', 'bold')
"{{{diff
call s:Hi('DiffAdd', 'NONE', '193', 'NONE')
call s:Hi('DiffChange', 'NONE', '223', 'NONE')
call s:Hi('DiffDelete', 'NONE', '159', 'NONE')
call s:Hi('DiffText', 'NONE', '225', 'bold')
"}}}
"}}}

hi CursorIM                  guifg=#FFFFFF  guibg=#000000  gui=NONE
hi Directory                 guifg=blue     guibg=#f0f0ff  gui=bold

hi VertSplit                 ctermbg=248 ctermfg=white  guifg=#a8a8a8 guibg=#ffffff gui=NONE
hi NonText                   guifg=#eeeeee  guibg=NONE     gui=NONE
hi LineNr                    guifg=#a0caff  guibg=#eafaff  gui=italic,underline
hi SpecialKey                ctermfg=223  ctermbg=NONE  guifg=#f0e0b0  guibg=NONE     gui=NONE

hi TabLineFill ctermbg=60 ctermfg=159 cterm=NONE guibg=#6c6c6c gui=NONE
hi TabLineSel  ctermbg=white cterm=bold ctermfg=208 guibg=#6c6c6c gui=NONE guifg=#54fd54
hi TabLine     ctermbg=darkgray ctermfg=white cterm=NONE guibg=#6c6c6c gui=NONE guifg=white
"hi WordUnderTheCursor ctermbg=254  guibg=#ffffd7  gui=underline

"Easy motion
"------------------------------------------------------------------------------
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred

"Common language structure
"------------------------------------------------------------------------------
hi Comment  ctermfg=153 ctermbg=white guifg=#afd7ff guibg=white   gui=italic
hi String   ctermfg=69  ctermbg=white cterm=NONE guifg=#5f87ff guibg=#fcfaff gui=italic
hi Statement ctermfg=214 cterm=bold  guifg=#ffaf00   gui=bold
hi Identifier  ctermfg=130  guifg=#af5f00  gui=NONE
hi Error   ctermfg=red ctermbg=white cterm=inverse,bold guifg=#ff0000   guibg=#ffffff         gui=inverse,bold

"------------------------------------------------------------------------------
"javascript
hi jsThis         ctermfg=69   cterm=bold       guifg=#5f87ff  gui=bold
hi jsFunction     ctermfg=34   cterm=bold  guifg=#00af00  gui=italic
hi jsNoise        ctermfg=246  guifg=#9e9e9e  guibg=NONE     gui=italic
hi jsStorageClass ctermfg=gray guifg=gray     guibg=NONE     gui=italic
hi jsFunctionKey  ctermfg=34   guifg=#00af00  guibg=NONE cterm=bold,underline
hi jsObjectKey    ctermfg=33   guifg=#0087ff  guibg=NONE cterm=bold
hi jsFuncCall     ctermfg=29   guifg=#00875f  guibg=NONE
                               
hi jsParens       ctermfg=202 guifg=#ff5f00  guibg=NONE
hi jsFuncParens   ctermfg=64  guifg=#5f8700  guibg=NONE
hi jsFuncArgs     ctermfg=29  guifg=#00875f  guibg=NONE
hi jsBraces       ctermfg=124 guifg=#af0000
hi jsFuncBraces   ctermfg=70  guifg=#5faf00
hi jsBrackets     ctermfg=39  guifg=#00afff

"------------------------------------------------------------------------------
"PYTHON
hi pyBrack                   guifg=#00bb00  guibg=NONE     gui=NONE
hi pyBrack2                  guifg=#ee0000  guibg=NONE     gui=NONE
hi pyBrack3                  guifg=#0000bb  guibg=NONE     gui=NONE
hi pyFalse                   guifg=#bb2244  guibg=NONE     gui=NONE
hi pyNone                    guifg=#4422dd  guibg=NONE     gui=NONE
hi pySelf                    guifg=#6e5bff  guibg=#fbfbff  gui=bold
hi pythonClass               guifg=#FF9900  guibg=#fffaf0  gui=bold
hi pythonDecorator           guifg=#22cc77  guibg=#f3fffd  gui=italic
hi pythonFunction            guifg=#2e8bff  guibg=#fbfbff  gui=bold,underline
hi pythonClassName           guifg=#cc6600  guibg=#fffaf0  gui=bold,underline
hi pythonBuiltinFunc         guifg=#00aa33  guibg=#fafffc  gui=None
hi pyTrue                    guifg=#22bb44  guibg=NONE     gui=NONE
hi pythonEscape              guifg=#ffdd99  guibg=NONE     gui=italic
hi pythonSpaceError          ctermbg=223 guifg=#ffaa77  guibg=NONE     gui=NONE
hi pythonSelf         ctermfg=69   cterm=bold       guifg=#5f87ff  gui=bold
hi pythonClass    ctermfg=69 guifg=#5f87ff
hi pythonFunction    ctermfg=69 guifg=#5f87ff

hi link    pythonDocComment    Comment

hi jediFat ctermfg=237 ctermbg=254 cterm=bold
hi jediFunction ctermbg=255
"------------------------------------------------------------------------------
"DJANGO
hi djangoTagBlock            guifg=#8bbe69  guibg=#fcffef gui=bold
hi djangoVarBlock            guifg=#88bb66  guibg=#fcffef
hi djangoStatement           guifg=#ff993e  guibg=#fcffef

"------------------------------------------------------------------------------
"CSS
hi StorageClass              guifg=#00bb00  guibg=NONE     gui=NONE
hi cssClassName              guifg=#009900  guibg=#eeffee  gui=bold
hi stylusProperty            guifg=#009900  guibg=#eeffee  gui=bold

"HTML
hi htmlLink                  guifg=#0000ff  guibg=#f5f5ff  gui=italic

"------------------------------------------------------------------------------
"ctrl-p
hi CtrlPPrtCursor ctermfg=NONE ctermbg=117 guifg=NONE guibg=#70e7ff gui=NONE

hi Ignore       guifg=bg
"hi StorageClass        	  guifg=lightgray
hi Constant               guifg=#666666                         gui=NONE
hi Special                guifg=#ff2222                         gui=NONE
hi conceal                guifg=#FF9900   guibg=NONE            gui=bold
hi PreProc                guifg=#009900                         gui=NONE
hi PreProc                guifg=#009900                         gui=NONE
hi Type                   guifg=#FF9900   gui=bold              guibg=#fffdf6
hi Title                  guifg=#1050ff   gui=bold
hi Todo   ctermbg=220      ctermfg=196    cterm=bold      guibg=#ffd700   guifg=#ff0000             gui=bold
hi Visual                                 guibg=#e0f8f5
hi pregPattern_S          guifg=#6677ff   guibg=#fcfaff         gui=italic

hi indentGuidesOdd  ctermbg=white cterm=NONE guibg=#ffffff guifg=NONE gui=NONE
hi indentGuidesEven ctermbg=230   cterm=NONE guibg=#ffffd7 guifg=NONE gui=NONE

"JAVASCRIPT
hi javascriptFuncName  guifg=#007bff   guibg=#eafcff gui=underline,bold,italic
hi javaScriptFuncKeyword guifg=#007bff   guibg=#f0fcff gui=NONE
hi javaScriptPrototype guifg=#00bf3b   guibg=#f0fffc gui=NONE
hi javaScriptIdentifier guifg=#00bf3b   guibg=#f0fffc gui=NONE
hi javaScriptIdentifier guifg=#bf3b00   guibg=#ffffe0 gui=NONE

hi NERDTreeBookmark        guifg=#daeafa   guibg=#fcfeff  gui=italic
hi NERDTreeBookmarksLeader guifg=#fffadd   guibg=#fffadd  gui=NONE
hi NERDTreeBookmarkName    guifg=#993300   guibg=#ffffea  gui=NONE
hi NERDTreeDirSlash        guifg=#ddddff   guibg=#f0f0ff  gui=NONE


hi link   MoreMsg     Comment
hi link   ErrorMsg    Visual
hi link   WarningMsg  ErrorMsg
hi link   Question    Comment
hi link   Function    PreProc
hi link   Character	  Constant
hi link   Number	    Special
hi link   Boolean	    Constant
hi link   Float		    Number
hi link   Operator    Identifier
hi link   Keyword	    Statement
hi link   Exception	  Statement
hi link   Include	    PreProc
hi link   Define	    PreProc
hi link   Macro		    PreProc
hi link   Conditional	Statement
hi link   Repeat	    Statement
hi link   Label		    Statement
hi link   PreCondit	  PreProc
"hi link   StorageClass	Type
hi link   Structure	  Type
hi link   Typedef	    Type
hi link   SpecialChar	SpecialKey
hi link   Delimiter	  Special
hi link   SpecialComment Comment
hi link   Debug		    Special


"statusbar
hi StatuslineFlag      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#e9ebed guifg=#404030
hi StatuslinePath      cterm=none    ctermfg=white  ctermbg=black   gui=None guibg=#e9ebed guifg=#a0a0b0
hi StatuslineFileName  cterm=none    ctermfg=white  ctermbg=blue    gui=bold guibg=#e9ebed guifg=black
hi StatuslineFileEnc   cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#e9ebed guifg=#a0a0b0
hi StatuslineFileType  cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#e9ebed guifg=#a0a0b0
hi StatuslineChar      cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#e9ebed guifg=#a0a0b0
hi StatuslineSyn      cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#e9ebed guifg=#a0a0b0
hi StatuslinePercentage      cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#e9ebed guifg=#a0a0b0
hi StatuslineSomething cterm=reverse ctermfg=white  ctermbg=darkred gui=none guibg=#c0c0f0 guifg=black
