function! multiple_switcher#switch(mode)
  try
    execute 'call multiple_switcher#switch#'.a:mode.'()'
  catch /E117.*/
    " E117: Specified function is not exists.
    try
      execute 'set inv'.a:mode
    catch /E518.*/
      echoerr 'Specified switch-mode is not exists, and no invert option.'
    endtry
  endtry

  if !exists('g:multiple_switcher_no_info_message')
    echo '[multiple_switcher] switched ' . a:mode . ' :)'
  endif
endfunction

