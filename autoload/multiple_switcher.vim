function! multiple_switcher#switch(mode)
  execute 'call multiple_switcher#switch#'.a:mode.'()'

  if !exists('g:multiple_switcher_no_info_message')
    echo '[multiple_switcher] switched ' . a:mode . ' :)'
  endif
endfunction

