vnoremap <silent><Space>" <esc>:call SurroundText("\"", "\"", 0)<CR>
vnoremap <silent>' <esc>:call SurroundText("\'", "\'", 0)<CR>
vnoremap <silent>( <esc>:call SurroundText("(", ")", 0)<CR>
vnoremap <silent>[ <esc>:call SurroundText("[", "]", 0)<CR>
vnoremap <silent>{ <esc>:call SurroundText("{", "}", 0)<CR>
vnoremap <silent>) <esc>:call SurroundText("( ", " )", 1)<CR>
vnoremap <silent>] <esc>:call SurroundText("[ ", " ]", 1)<CR>
vnoremap <silent>} <esc>:call SurroundText("{ ", " }", 1)<CR>

function! SurroundText(key, pair, withSpace) abort
    let start      = getpos("'<")
    let end        = getpos("'>")
    
    :let @t = a:key
    :call cursor(start[1],start[2])
    :normal "tP
    :let @t = a:pair

    if end[2] < v:maxcol && a:withSpace
        :call cursor(end[1],end[2]+2)
    elseif end[2] == v:maxcol && !a:withSpace
        :call cursor(end[1],v:maxcol)
    elseif end[2] == v:maxcol && a:withSpace
        :call cursor(end[1],v:maxcol)
    else
        :call cursor(end[1],end[2])
    endif

    :normal "tp
endfunction
