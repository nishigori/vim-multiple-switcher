"=============================================================================
" NAME:    Multiple switcher.
" AUTHOR:  Takuya Nishigori <nishigori.tak@gmail.com>
" Version: 0.1
" License: Creative Commons Attribution 2.1 Japan License
"          <http://creativecommons.org/licenses/by/2.1/jp/deed.en>
"=============================================================================

if exists('g:loaded_mutiple_switcher')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <Plug>(multiple_switcher_buffer)
  \ :<C-u>call multiple_switcher#switch('buffer')<CR>
nnoremap <silent> <Plug>(multiple_switcher_expandtab)
  \ :<C-u>call multiple_switcher#switch('expandtab')<CR>
nnoremap <silent> <Plug>(multiple_switcher_paste)
  \ :<C-u>call multiple_switcher#switch('paste')<CR>
nnoremap <silent> <Plug>(multiple_switcher_wrap)
  \ :<C-u>call multiple_switcher#switch('wrap')<CR>
nnoremap <silent> <Plug>(multiple_switcher_number)
  \ :<C-u>call multiple_switcher#switch('number')<CR>

if !exists('g:multiple_switcher_no_default_key_maps')
  silent! nmap <silent> ,b <Plug>(multiple_switcher_buffer)
  silent! nmap <silent> ,e <Plug>(multiple_switcher_expandtab)
  silent! nmap <silent> ,p <Plug>(multiple_switcher_paste)
  silent! nmap <silent> ,w <Plug>(multiple_switcher_wrap)
  if v:version >= 703
    silent! nmap <silent> ,n <Plug>(multiple_switcher_number)
  endif
endif

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_mutiple_switcher = 1


" vim:set fdm=marker ts=2 sw=2 sts=0 expandtab filetype=vim:
