# multiple_switcher.vim

multiple_switcher.vim is switching any mode for Vi IMproved.

# Install

Please put your vim's runtimepath this plugin files.

ex.)

  ~/.vim/plugin/multiple_switcher.vim
  ~/.vim/autoload/multiple_switcher.vim
  ~/.vim/autoload/multiple_switcher/switch.vim

## Availble modes

* buffer (next <-> previous)
* number (number <-> relativenumber)
  for vim's version overed 7.3.
* paste (paste <-> nopaste)
* wrap (wrap <-> nowrap)

## How to use

* default key mapping

,b : switched buffer (next, previous)
,n : switched number (number, relativenumber)
,p : switched paste-mode.
,w : switched wrap (enabled, nowrap)

If you're needless default key mappings, specified this script at your vimrc.

`let g:multiple_switcher_no_default_key_maps = 1`

* custom key mapping

ex.)

'nmap <silent> <Leader>b <Plug>(muotiple_switcher_buffer)'
