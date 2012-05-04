function! multiple_switcher#switch#buffer()
  let buffer_flg = get(g:, 'multiple_switcher_buffer_flg', 0)
  if buffer_flg == 0
    " Maybe you would want to use this first scene is
    "   when you want to go back to the previous buffer.
    bprevious
    let g:multiple_switcher_buffer_flg = 1
  else
    bnext
    let g:multiple_switcher_buffer_flg = 0
  endif
endfunction

function! multiple_switcher#switch#expandtab()
  if &expandtab
    setlocal noexpandtab
  else
    setlocal expandtab
  endif
endfunction

function! multiple_switcher#switch#paste()
  if &paste
    setlocal nopaste
  else
    setlocal paste
  endif
endfunction

function! multiple_switcher#switch#wrap()
    if &wrap
      setlocal nowrap
    else
      setlocal wrap
    endif
endfunction

function! multiple_switcher#switch#number()
  if v:version < 703
    echoerr 'this version is not supported relativenumber.'
  endif
  if &number
    setlocal relativenumber
  else
    setlocal number
  endif
endfunction

function! multiple_switcher#switch#background()
    if &background == 'light'
      set background=dark
    else
      set background=light
    endif
endfunction
