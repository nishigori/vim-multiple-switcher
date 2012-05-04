"=============================================================================
" NAME:    Multiple switcher.
" AUTHOR:  Takuya Nishigori <nishigori.tak@gmail.com>
" Version: 1.0
" License: Creative Commons Attribution 2.1 Japan License
"          <http://creativecommons.org/licenses/by/2.1/jp/deed.en>
"=============================================================================

if exists('g:loaded_mutiple_switcher')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <Plug>(multiple_switcher_number)
  \ :<C-u>call multiple_switcher#switch('number')<CR>
nnoremap <silent> <Plug>(multiple_switcher_background)
  \ :<C-u>call multiple_switcher#switch('background')<CR>

if !exists('g:multiple_switcher_no_default_key_maps')
  silent! nmap <silent> ,n <Plug>(multiple_switcher_number)
  silent! nmap <silent> ,b <Plug>(multiple_switcher_background)
endif

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_mutiple_switcher = 1


" vim:set fdm=marker ts=2 sw=2 sts=0 expandtab filetype=vim:
