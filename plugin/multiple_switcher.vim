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

if !exists('g:multiple_switcher_no_default_key_maps')
  nnoremap <silent>,b :call multiple_switcher#switch('buffer')<CR>
  nnoremap <silent>,p :call multiple_switcher#switch('paste')<CR>
  nnoremap <silent>,w :call multiple_switcher#switch('wrap')<CR>
  if version >= 703
    nnoremap <silent>,n :call multiple_switcher#switch('number')<CR>
  endif
endif

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_mutiple_switcher = 1


" vim:set fdm=marker ts=2 sw=2 sts=0 expandtab filetype=vim:
